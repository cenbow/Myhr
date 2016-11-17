package utils;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.ConvolveOp;
import java.awt.image.Kernel;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ImgCompress {

	private Image img;
	private int width;
	private int height;
	
	
	public ImgCompress(File imgFile) throws Exception{
		this.img = ImageIO.read(imgFile);
		this.width = img.getWidth(null);
		this.height = img.getHeight(null);
	}
	
	/**
	 * 图片压缩，使用默认的压缩比0.75
	 * @param percent
	 * @param file
	 * @throws Exception
	 */
	public void resizeByPercent(double percent,File file) throws Exception{
		int w = (int) (width*percent);
		int h = (int) (height*percent);
		resize(w,h,file);
	}
	
	/**
	 * 图片压缩，并进行图片质量控制
	 * @param percent
	 * @param file
	 * @param quality
	 * @throws Exception
	 */
	public void resizeByPercent(double percent,File file,float quality) throws Exception{
		int w = (int) (width*percent);
		int h = (int) (height*percent);
		resize(w,h,file,quality);
	}
	
	/**
	 * 图片压缩处理，不进行质量控制，
	 * @param w
	 * @param h
	 * @param destFile
	 * @throws Exception
	 */
	public void resize(int w,int h,File destFile) throws Exception{
		
		BufferedImage image = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		image.getGraphics().drawImage(img, 0, 0, w,h,null);
		
		FileOutputStream out = new FileOutputStream(destFile);
		String ext = "jpg";
		if(destFile != null){
			String name = destFile.getName();
			ext = name.substring(name.lastIndexOf(".")+1);
		}
		ImageIO.write(image,ext,out);
		out.close();

	}
	

	/**
	 * 图片压缩处理并控制压缩的图片质量，
	 * @param w
	 * @param h
	 * @param destFile
	 * @param quality 图片质量比(0~1),1代表无损压缩[甚至图片会变大]。超出质量使用默认的高质量压缩比(0.75)
	 * @throws Exception
	 */
	public void resize(int w,int h,File destFile,float quality) throws Exception{
		
		BufferedImage image = new BufferedImage(w, h, BufferedImage.TYPE_INT_RGB);
		image.getGraphics().drawImage(img, 0, 0, w,h,null);
		
		FileOutputStream out = new FileOutputStream(destFile);
		JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
		if(quality>1 || quality<=0){
			quality = 0.75f;
		}
		JPEGEncodeParam encoderParam = encoder.getDefaultJPEGEncodeParam(image);
		encoderParam.setQuality(quality, false);
		encoder.setJPEGEncodeParam(encoderParam);  
		encoder.encode(image);
		
		out.close();

	}
	
	
	 public static void resize(File originalFile, File resizedFile,  
	            int newWidth, float quality) throws IOException {  
	  
	        if (quality > 1) {  
	            throw new IllegalArgumentException(  
	                    "Quality has to be between 0 and 1");  
	        }  
	  
	        ImageIcon ii = new ImageIcon(originalFile.getCanonicalPath());  
	        Image i = ii.getImage();  
	        Image resizedImage = null;  
	  
	        int iWidth = i.getWidth(null);  
	        int iHeight = i.getHeight(null);  
	  
	        if (iWidth > iHeight) {  
	            resizedImage = i.getScaledInstance(newWidth, (newWidth * iHeight)  
	                    / iWidth, Image.SCALE_SMOOTH);  
	        } else {  
	            resizedImage = i.getScaledInstance((newWidth * iWidth) / iHeight,  
	                    newWidth, Image.SCALE_SMOOTH);  
	        }  
	  
	        // This code ensures that all the pixels in the image are loaded.  
	        Image temp = new ImageIcon(resizedImage).getImage();  
	  
	        // Create the buffered image.  
	        BufferedImage bufferedImage = new BufferedImage(temp.getWidth(null),  
	                temp.getHeight(null), BufferedImage.TYPE_INT_RGB);  
	  
	        // Copy image to buffered image.  
	        Graphics g = bufferedImage.createGraphics();  
	  
	        // Clear background and paint the image.  
	        g.setColor(Color.white);  
	        g.fillRect(0, 0, temp.getWidth(null), temp.getHeight(null));  
	        g.drawImage(temp, 0, 0, null);  
	        g.dispose();  
	  
	        // Soften.  
	        float softenFactor = 0.05f;  
	        float[] softenArray = { 0, softenFactor, 0, softenFactor,  
	                1 - (softenFactor * 4), softenFactor, 0, softenFactor, 0 };  
	        Kernel kernel = new Kernel(3, 3, softenArray);  
	        ConvolveOp cOp = new ConvolveOp(kernel, ConvolveOp.EDGE_NO_OP, null);  
	        bufferedImage = cOp.filter(bufferedImage, null);  
	  
	        // Write the jpeg to a file.  
	        FileOutputStream out = new FileOutputStream(resizedFile);  
	  
	        // Encodes image as a JPEG data stream  
	        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);  
	  
	        JPEGEncodeParam param = encoder  
	                .getDefaultJPEGEncodeParam(bufferedImage);  
	  
	        param.setQuality(quality, true);  
	  
	        encoder.setJPEGEncodeParam(param);  
	        encoder.encode(bufferedImage);  
	    }
	
}
