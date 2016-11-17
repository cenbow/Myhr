// banner
$(function(){
	// banner 居中
	var wth = $(window).width()-1920;
	$('.p-banner').css('left',wth/2+'px');
	$(window).resize(function(){
		var wth = $(window).width()-1920;
		$('.p-banner').css('left',wth/2+'px');
	})
	// banner 定义变量
	var boxx = $('.p-bannerbox'),
		minb = boxx.children('.p-banner'),
		acon = minb.children('a'),
		leng = acon.length,
		cele = $('<span></span>');
	// 添加控制点
	for (var i = 0; i < leng; i++) {
		cele.clone(true).appendTo($('.p-control'));
	};
	// 默认第一张
	$('.p-control').children('span').eq(0).addClass('cur');
	acon.hide().eq(0).show().css('left',0);
	// 下一张方法
	var i = 0,
		ctrl = $('.p-control').children('span');
	function next(){
		if (!acon.is(':animated')) {
			acon.eq(i).animate({'left':-1920+'px'}, 777,function(){
				$(this).hide();
			})
			if (i<leng-1) {
				acon.eq(i+1).show().css('left',1920+'px').animate({'left': 0 }, 777);
				i++;
			}else{
				acon.eq(0).show().css('left',1920+'px').animate({'left': 0 }, 777);
				i=0;
			};
			ctrl.removeClass('cur').eq(i).addClass('cur');
		};
	}
	// 上一张方法
	function prev(){
		if (!acon.is(':animated')) {
			acon.eq(i).animate({'left':1920+'px'}, 777,function(){
				$(this).hide();
			})
			if (i>0) {
				acon.eq(i-1).show().css('left',-1920+'px').animate({'left': 0 }, 777);
				i--;
			}else{
				acon.eq(leng-1).show().css('left',-1920+'px').animate({'left': 0 }, 777);
				i=leng-1;
			};
			ctrl.removeClass('cur').eq(i).addClass('cur');
		}
	}
	// 控制点控制
	ctrl.click(function() {
		var idx = $(this).index();
		if (!acon.is(':animated')) {
			if (idx<i) {
				acon.eq(i).animate({'left':1920+'px'}, 777,function(){
					$(this).hide();
				})
				acon.eq(idx).show().css('left',-1920+'px').animate({'left': 0 }, 777);
			}else if(idx>i){
				acon.eq(i).animate({'left':-1920+'px'}, 777,function(){
					$(this).hide();
				});
				acon.eq(idx).show().css('left',1920+'px').animate({'left': 0 }, 777);
			}
			i=idx;
			ctrl.removeClass('cur').eq(i).addClass('cur');
		}
	});
	// 自动滚动
	var timeId;
	boxx.hover(function() {
		clearInterval(timeId);
	}, function() {
		timeId = setInterval(function(){
			next();
		},4000)
	}).trigger('mouseleave');
})

// 新闻自动滚动
function scrollNews(scrollArea,scrollUl,speed){
	var timeId,
		height=scrollUl.children("li").height();
	scrollArea.hover(function(){
		clearInterval(timeId);
	},function(){
		if(scrollUl.children("li").length>1){
			timeId=setInterval(function(){
				scrollUl.animate({"margin-top":-height+"px"},600,function(){
					scrollUl.css("margin-top","0").find("li:first").appendTo(scrollUl);
				});
			},speed);
		}
	}).trigger("mouseleave");
}



//网站公告滚动
	function newsScroll(slider){
		var
			Slider = $(slider),
			List = Slider.find("ul"),
			Prev = Slider.find(".prev"),
			Next = Slider.find(".next"),
			h = Slider.height(),
			len = List.find(">li").length,
			time = 3000;
		List.find(">li").clone().prependTo(List);
		var top = 0,click = true;

		//自动

		function newsScrollAuto(type){
			var type = type || "up";
			if(type == "up"){
				if(Math.abs(List.position().top) == len * h){
					top = 0;
					List.css("top",0);
				}
			}else{
				if(Math.abs(List.position().top) == 0){
					top = -len * h;
					List.css("top",top);
				}
			}
			type == "up" ? top -= h : top += h;
			List.stop(true).animate({"top":top},500,function(){
				click = true;
			});
		}
		newsPlaying = setInterval(newsScrollAuto,time);

		//鼠标悬浮停止
		Slider.on({
			"mouseover":function(){
				clearInterval(newsPlaying);
			},
			"mouseleave":function(){
				newsPlaying = setInterval(newsScrollAuto,time);
			}
		});

		//上移
		Prev.on("click",function(){
			if(click){
				newsScrollAuto("down");
			}
			click = false;
		});

		//下移
		Next.on("click",function(){
			if(click){
				newsScrollAuto("up");
			}
			click = false;
		});
	}




//自动滚动+点击左右滚动
/*	contan=父元素
	prev=上一个按钮
	next=下一个按钮
	scroul=滚动ul
	num=可视区域元素个数 */
function lrscro(contan,prev,next,scroul,num){
	var wth = scroul.children('li').outerWidth(true),
		len = scroul.children('li').length,
		timeId;
		scroul.width(wth*len);
	if (len > num) {
		contan.hover(function() {
			clearInterval(timeId);
			prev.click(function() {
				if (!scroul.is(":animated")) {
					scroul.css('left',-wth+'px').find('li:last').prependTo(scroul);
					scroul.animate({'left': 0},400);
				};
			});
			next.click(function() {
				if (!scroul.is(":animated")) {
					scroul.animate({'left': -wth+'px'},400, function() {
						$(this).css('left',0).find('li:first').appendTo(scroul);
					});
				};
			});
		}, function() {
			timeId = setInterval(function(){
				scroul.animate({'left': -wth+'px'},400, function() {
					$(this).css('left',0).find('li:first').appendTo(scroul);
				});
			},3300)
		}).trigger('mouseleave');
	}
}

//金额格式化

	function outputmoney(number) {
		number = number.replace(/\,/g, "");
		if(isNaN(number) || number == "")return "";
		number = Math.round(number * 100) / 100;
		if (number < 0)
			return '-' + outputdollars(Math.floor(Math.abs(number) - 0) + '') + outputcents(Math.abs(number) - 0);
		else
			return outputdollars(Math.floor(number - 0) + '') + outputcents(number - 0);
	}
//格式化金额
function outputdollars(number) {
	if (number.length <= 3)
		return (number == '' ? '0' : number);
	else {
		var mod = number.length % 3;
		var output = (mod == 0 ? '' : (number.substring(0, mod)));
		for (i = 0; i < Math.floor(number.length / 3); i++) {
			if ((mod == 0) && (i == 0))
				output += number.substring(mod + 3 * i, mod + 3 * i + 3);
			else
				output += ',' + number.substring(mod + 3 * i, mod + 3 * i + 3);
		}
		return (output);
	}
}
function outputcents(amount) {
	amount = Math.round(((amount) - Math.floor(amount)) * 100);
	return (amount < 10 ? '.0' + amount : '.' + amount);
}



$(function(){
    //网站公告
	if($("#p-syggleft-newscrol li").length > 1){newsScroll(".p-syggoverhide");}
	lrscro($('.p-syfrbox'),$('#p-prev'),$('#p-next'),$('.p-syfrulbox>ul'),5);
	lrscro($('.p-synews-banner'),$('#p-synews-prev'),$('#p-synews-next'),$('.p-synews-bannerbody>ul'),1);
    lrscro($('.investCoor-bd'),$('#investCoor-bd-prev'),$('#investCoor-bd-next'),$('.investCoor-bdul>ul'),5);
	//投资排名
	scrollNews($('#p-sytzpm'),$('.p-sytzpmul'),3500);
    //最近排名
    scrollNews($('#p-syzjtz'),$('.p-syzjtzul'),3500);
	tabclick($('.p-zcxxkul li'),$('.p-zctabox'),'cur');
	tabclick($('.p-bdxxkul li'),$('.p-bdtabox'),'cur');

	//浮动导航
	var navBox = $(".p-headBox");
	$(window).scroll(function(){
		var scrollTop = $(window).scrollTop();
		if(scrollTop > 200){
			if(!navBox.hasClass("fixed")){
				var height = navBox.height();
				navBox.parent().height(height);
				navBox.addClass("fixed").hide().slideDown(300);
			}
		}else{
			navBox.removeClass("fixed");
		}
	}).trigger('scroll');


})

// 通用选项卡
function tabclick(li,tabox,name){
	li.eq(0).addClass(name);
	tabox.eq(0).show();
	li.click(function(){
		$(this).addClass(name).siblings().removeClass(name);
		tabox.hide().eq(li.index(this)).show();
	})
}

//弹窗居中
function popcenter(className){
    var $pop = $(className),
        $popbg = $pop.find(".p-popbg"),
        $popbox = $pop.find(".p-popbox"),
        $close = $pop.find(".p-popclose"),
        $console = $pop.find(".p-consolebtn") || null;
    $pop.show();
    var width = $popbox.innerWidth(),
        height = $popbox.innerHeight();
    $popbox.css({
        "margin-left" : -width/2,
        "margin-top" : -height/2
    });
    $close.click(function(){
        $pop.hide();
    });
    if($console != null){
        $console.click(function(){
            $pop.hide();
        });
    }
}

$(function(){
	// 返回顶部
    var $goTop=$(".go_top");
	$goTop.hide();
	$(window).scroll(function(){
		if($(window).scrollTop()>500){
			$goTop.show();
		}else{
			$goTop.hide();
		}
	})
	$goTop.click(function(){
		var scrollTop=$(window).scrollTop();
		goTop(scrollTop);
		if ($(".p-safnext")) {
			$(".p-safnext").show();
		};
	});
	function goTop(num){
		var timeid;
		timeid=setInterval(function(){
			if(num>0){
				num-=50;
				$(window).scrollTop(num);
			}else{
				clearInterval(timeid);
			}
		},10);
	}
	//文本框提示
	$(".p-input").map(function(){

		var obj = $(this);
		var timeid = setInterval(function(){
			if(!obj.val()==""){
				obj.siblings(".p-tips").hide();
				clearInterval(timeid);
			}
		},10);
		$(".p-tips").click(function(){
			$(this).siblings(".p-input").focus();

		});
		$(this).bind({
			focus:function(){
				if (this.value == ""){
					$(this).siblings(".p-tips").hide();

				}
			},
			blur:function(){
				if (this.value == ""){
					$(this).siblings(".p-tips").show();

				}
			}
		});
	});
	$("input:password").map(
		function () {
			var obj	=$(this);
			if(obj.val() != ""){
				obj.siblings(".p-tips").hide();
			}
		}
	)
	$(".p-text").bind({
         focus:function(){
		    if (this.value == this.defaultValue){
				this.value="";
				}
			},
		blur:function(){
			if (this.value == ""){
                this.value = this.defaultValue;
            }
        }
    });
})

$(function(){
	$('.p-lclose').click(function(){
		$(this).parent('.p-lcbanner').fadeOut();
	})
	$('.p-lcpaixu a').click(function(){
		if ($(this).hasClass('up')) {
			$(this).removeClass('up').addClass('down').siblings().removeClass();
		}else{
			$(this).removeClass('down').addClass('up').siblings().removeClass();;
		};
	})
	$('.p-lclickbtn a').click(function(){
		if (!$('.p-lchidebox').is(':animated')) {
			if (!$(this).hasClass('cur')) {
				$(this).addClass('cur');
				$('.p-lchidebox').slideUp();
			}else{
				$(this).removeClass('cur');
				$('.p-lchidebox').slideDown();
			};
		};
	});
	$('.p-lcshouc').click(function(){
		if ($(this).hasClass('none')) {
			$(this).removeClass('none').children('.kx').hide().siblings('.sx').show();
		}else{
			$(this).addClass('none').children('.kx').show().siblings('.sx').hide();
		};
	})
	$('.p-cfnav>li>a').click(function() {
		if ($(this).next().is(':hidden')) {
			$(this).parent().addClass('cur');
			$(this).next().slideDown();
		}else{
			$(this).parent().removeClass('cur')
			$(this).next().slideUp();
		};
	});
	$('.p-hpitem>li>h6').click(function(){
		if ($(this).next().is(':hidden')) {
			$(this).parent().addClass('cur');
			$(this).next().slideDown();
		}else{
			$(this).parent().removeClass('cur');
			$(this).next().slideUp();
		};
	})
})

// end


$(function(){
	$('.p-zhabox a').mouseover(function() {
		$(this).addClass('cur').siblings().removeClass('cur');
	});
	tabclick($('.p-zhrtxxkul li'),$('.p-zhtabox'),'cur');
})

// 20160219
// $(function(){
// 	$('.p-tcmain').click(function(event){
//         event.stopPropagation();
//     });
//     var timeoo,
//     	_alertbox = $('.p-dllerror');
//     timeoo = setInterval(function(){
// 		_alertbox.hide();
// 	},4000)
// 	tabclick($('.p-syxxkul li'),$('.p-sytabul'),'cur');
// })

// 20160220
$(function(){
	$('.p-hbxuanz li').click(function(event) {
		var mix = $(this).children('.p-hbhidnav');
		if (mix.is(':hidden')) {
			$(this).addClass('cur').siblings('li').removeClass('cur').children('.p-hbhidnav').slideUp();
			mix.slideDown();
		}else{
			$(this).removeClass('cur').children('.p-hbhidnav').slideUp();
		}
		mix.children('dd').click(function() {
			var txt = $(this).text();
			mix.siblings('div').children('span').text(txt);
		});
		event.stopPropagation();
	});
	$('.p-icont').click(function(){
		$(this).siblings('input').focus();
	})
	$('body').click(function(){
		$('.p-hbxuanz li').removeClass('cur');
		$('.p-hbhidnav').slideUp();
	});
    //公司公告样式
/*
    $(function () {
        $('.p-synews-dt-newul ul li:eq(0)').addClass("p-synews-dt-lis")
    })
*/

    $(function(){
        $(".p-synews ul").each(function(){
            //取出ul下的第一个li
            var li= $(this).children().first();
            li.addClass("p-synews-dt-lis");
        });
    });
    
    $(".Validform").Validform({
        tiptype: 3,
        datatype:{
            "n620" : /(?!^\d+$)(?!^[a-zA-Z]+$)[0-9a-zA-Z]{6,20}/,//6-20位数字字母组合
            "n00" : /^(?!^\d+$)(?!^[a-zA-Z]+$)[0-9a-zA-Z]{6,20}$/,//6-20位数字字母组合
            "n11" : /^\+?[1-9][0-9]*$/,//正整数
            "id18"  : /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}(\d|X|x)$/, //身份证
            "n170" : /^(((13[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/,//匹配170号段
            "username" : /^[A-Za-z0-9]{6,20}$/,//6-20位数字或字母
            "n22" : /^((\+?[1-9][0-9]*)|(-1))$/,  //正整数和-1
            "n20" : /^((^[1-9]$|^1[0-9]$|^2[0]$)|(-1))$/  //小于20正整数和-1

        }
    });

    $(".error_form").Validform({
        tiptype:function(msg,o,cssctl){
            var objtip=$(".error");
            cssctl(objtip,o.type);
            objtip.text(msg);
        }
    });
})












