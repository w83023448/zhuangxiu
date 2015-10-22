<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>案例搜索</title>
<link href="css/pc_css.css" rel="stylesheet" type="text/css" />
<link href="css/mobile_css.css" rel="stylesheet" type="text/css" />

<!--后台交互-->
<script type="text/javascript" src="res/jquery/jquery.min.js"></script>
<script type="text/javascript" src="res/pcm/pcm.src.js"></script>
<!--后台交互 end-->


<script src="js/leftright.js" type=text/javascript></script>
<!--左右切换不循环-->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--左右切换不循环 end-->
<!--首页案例切换-->
<script type="text/javascript" src="js/zzsc.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<!--fancybox end-->

<!--enplaceholder-->
<script type="text/javascript" src="js/enplaceholder.js"></script>

<script type="text/javascript">
$(function(){
	$(".sousuoLink").click(function(){
		$(this).hide();
		$(this).next(".searchEm").show();
		});
	
	$(".box").hover(function(){
		$(this).find(".boxHover").slideDown(100);
		},function(){
			$(this).find(".boxHover").slideUp(100);
			});
			
	//登录注册弹出层
	$('.fancybox').fancybox(
	{
		closeBtn  : false
		}
	);
	
	//调用placeholder
	//通过value模拟placeholder
	$('input,textarea').placeholder();
	//通过插入元素模拟placeholder
	$('input,textarea').placeholder({isUseSpan:true});
		
    //登录注册tab切换
	$(".logTablist li").each(function(index, element) {
        $(this).click(function(){
			$(".logTablist li").removeClass("tabon");
			$(this).addClass("tabon");
			
			$(".logWrap").removeClass("logWrapShow");
			$(".logWrap").eq(index).addClass("logWrapShow");
			});
    });	
	
	});
</script>
<script type="text/javascript">
$(function(){
	$(".sousuoLink").click(function(){
		$(this).hide();
		$(this).next(".searchEm").show();
		});
	
	$(".jiazai").click(function(){
		$(".hideLi").fadeIn();
		});
		
	$(".jiazai2").click(function(){
		$(".hideLi").fadeIn();
		});
		
    //登录注册弹出层
	$('.fancybox').fancybox(
	{
		closeBtn  : false
		}
	);
	
	//调用placeholder
	//通过value模拟placeholder
	$('input,textarea').placeholder();
	//通过插入元素模拟placeholder
	$('input,textarea').placeholder({isUseSpan:true});
		
    //登录注册tab切换
	$(".logTablist li").each(function(index, element) {
        $(this).click(function(){
			$(".logTablist li").removeClass("tabon");
			$(this).addClass("tabon");
			
			$(".logWrap").removeClass("logWrapShow");
			$(".logWrap").eq(index).addClass("logWrapShow");
			});
    });
	
	//鼠标划过，出现编辑图标
	$(".chakanCntBox01").hover(function(){
		$(this).find(".editIcon").fadeIn(200);
		},function(){
			$(this).find(".editIcon").fadeOut(200);
			});
	
	//
	$(".chakanCntBox02").hover(function(){
		$(this).find(".editIcon02").fadeIn(200);
		},function(){
			$(this).find(".editIcon02").fadeOut(200);
			});
	//
	$(".baike_main").hover(function(){
		$(this).find(".xuanfu").fadeIn(200);
		},function(){
			$(this).find(".xuanfu").fadeOut(200);
			});
			
	//
	$(".chakanCntBox06").hover(function(){
		$(this).find(".editIcon06").fadeIn(200);
		},function(){
			$(this).find(".editIcon06").fadeOut(200);
			});
			
	//
	$(".chakanCntBox07").hover(function(){
		$(this).find(".editIcon07").fadeIn(200);
		},function(){
			$(this).find(".editIcon07").fadeOut(200);
			});
	
	//
	$(".miaoshu").hover(function(){
		$(this).find(".editIcon08").fadeIn(200);
		},function(){
			$(this).find(".editIcon08").fadeOut(200);
			});
	
	
	});
</script>
</head>

<body>
<!-- 代码开始 -->
<script type="text/javascript">
function b(){
	h = $(window).height();
	t = $(document).scrollTop();
	if(t > 100){
		$('#gotop').show();
	}else{
		$('#gotop').hide();
	}
}
$(document).ready(function(e) {
	b();
	$('#gotop').click(function(){
		$(document).scrollTop(0);	
	});
	$('#code').hover(function(){
			$(this).attr('id','code_hover');
			$('#code_img').show();
		},function(){
			$(this).attr('id','code');
			$('#code_img').hide();
	});
	
});

$(window).scroll(function(e){
	b();		
});
</script>
<div id="code"></div>
<div id="code_img"></div>
<a id="gotop" href="javascript:void(0)"></a>
<!-- 代码结束 -->

<div class="top">
	<ul>
    	<li  class="yinchang"><a href="#inline1" class="fancybox"><img src="images/zhuce.png" />注册</a></li>
        <li  class="yinchang"><a href="#inline1" class="fancybox"><img src="images/login.png" align="middle" width="21" height="21" />登录</a></li>
        <li style="padding-bottom:0;">
        	<a href="javascript:void(0)" class="sousuoLink"><img src="images/sousuo.png" /></a>
        	 <em class="clearfix searchEm">
    			<span><input type="text" placeholder="试试关键字搜索更多的案例吧" value=""></span>
        		<span><a href="#"><img src="images/sousuo02.jpg"></a></span>
   			 </em>
        </li>
    </ul>
</div>
<div class="logo"><img src="images/logo2.png" /></div>
<div class="nav">
<ul>
    	<li><a href="index.html"><span class="title_icon"><img src="images/icon_index.jpg" /></span><span class="title">首页</span></a></li>
        <li><a href="anli.html"><span class="title_icon"><img src="images/icon_anli01.jpg" /></span><span class="title nav_xianshi">搜索案例</span></a></li>
        <li id="aboutus"><a href="index.html#anli_title02"><span class="title_icon"><img src="images/icon_about.jpg" /></span><span class="title">关于我们</span></a></li>
        <li id="contactus"><a href="index.html#anli_title03"><span class="title_icon"><img src="images/icon_contact.jpg" /></span><span class="title">联系我们</span></a></li>
    </ul>
</div>
<div class="anli_h">XXX设计师   XX案例名称</div>
<div class="anli_main02 clearfix">
	<div class="anli_main_left">
    	<div class="fengmian chakanCntBox06"> <a href="#"><img src="images/fengmian01.jpg" /></a>
        	<span>封面</span>
            <!--鼠标放上去悬浮-->
            <a class="editIcon06"><img src="images/bianji.png" /></a>
			<!--鼠标放上去悬浮 end-->
        </div>
      <div class="history">
        <h1>历史留言</h1>
        <ul class="history_list">
        	<li class="chakanCntBox07"><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
            <a class="editIcon07" href="javascript:void()">删除</a>
            </li>
            <li class="chakanCntBox07"><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
            <a class="editIcon07" href="javascript:void()">删除</a>
            </li>
            <li class="chakanCntBox07"><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
            <a class="editIcon07" href="javascript:void()">删除</a>
            </li>
            <li class="chakanCntBox07"><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
            <a class="editIcon07" href="javascript:void()">删除</a>
            </li>
            
            
            <li class="chakanCntBox07 hideLi"><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
            <a class="editIcon07" href="javascript:void()">删除</a>
            </li>
            <li class="chakanCntBox07 hideLi"><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
            <a class="editIcon07" href="javascript:void()">删除</a>
            </li>
            <li class="chakanCntBox07 hideLi"><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
            <a class="editIcon07" href="javascript:void()">删除</a>
            </li>
            <li class="chakanCntBox07 hideLi"><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
            <a class="editIcon07" href="javascript:void()">删除</a>
            </li>
        </ul>
        <div class="jiazai2"><a href="javascript:void(0)"><img src="images/jiazai.png" /></a></div>
      </div>
  </div>
    <div class="anli_main_right">
   	    <div class="da_title02">户型图</div>
<div id="zzsc09">
<a class="pre"></a>
<div id="wai_box">
<div class="zzsc_box">
<ul>
<li><a href="#" class="images"><img src="images/01.jpg" /></a></li>
<li><a href="#" class="images"><img src="images/01.jpg" /></a></li>
<li><a href="#" class="images"><img src="images/tianjia.jpg" /></a></li>
</ul>
<ul>
<li><a href="#" class="images"></a></li>
<li><a href="#" class="images"></a></li>
<li><a href="#" class="images"></a></li>
</ul>
</div>
</div>
<a class="next"></a>
</div>

        <div class="da_title03">案例详情</div>
        <div class="ruanzhuang clearfix">
        	<h1>软装</h1>
            <div id="zzsc10">
<a class="pre"></a>
<div id="wai_box">
<div class="zzsc_box">
<ul>
<li><a href="#" class="images"><img src="images/01.jpg" /></a></li>
<li><a href="#" class="images"><img src="images/01.jpg" /></a></li>
<li><a href="#" class="images"><img src="images/tianjia.jpg" /></a></li>
</ul>
<ul>
<li><a href="#" class="images"></a></li>
<li><a href="#" class="images"></a></li>
<li><a href="#" class="images"></a></li>
</ul>
</div>
</div>
<a class="next"></a>
</div>
        </div>
        <div class="ruanzhuang clearfix">
        	<h1>家居</h1>
            <div id="zzsc11">
<a class="pre"></a>
<div id="wai_box">
<div class="zzsc_box">
<ul>
<li><a href="#" class="images"><img src="images/01.jpg" /></a></li>
<li><a href="#" class="images"><img src="images/tianjia.jpg" /></a></li>
</ul>
</div>
</div>
<a class="next"></a>
</div>
        </div>
        <div class="ruanzhuang clearfix">
        	<h1>安装</h1>
           <div id="zzsc12">
<a class="pre"></a>
<div id="wai_box">
<div class="zzsc_box">
<ul>
<li><a href="#" class="images"><img src="images/01.jpg" /></a></li>
<li><a href="#" class="images"><img src="images/tianjia.jpg" /></a></li>
</ul>
</div>
</div>
<a class="next"></a>
</div>
        </div>
        <div class="ruanzhuang clearfix">
        	<h1>油漆</h1>
            <div id="zzsc13">
<a class="pre"></a>
<div id="wai_box">
<div class="zzsc_box">
<ul>
<li><a href="#" class="images"><img src="images/01.jpg" /></a></li>
<li><a href="#" class="images"><img src="images/tianjia.jpg" /></a></li>
</ul>
</div>
</div>
<a class="next"></a>
</div>
        </div>
        <div class="ruanzhuang clearfix">
        	<h1>水电</h1>
            <div id="zzsc14">
<a class="pre"></a>
<div id="wai_box">
<div class="zzsc_box">
<ul>
<li><a href="#" class="images"><img src="images/01.jpg" /></a></li>
<li><a href="#" class="images"><img src="images/tianjia.jpg" /></a></li>
</ul>
</div>
</div>
<a class="next"></a>
</div>
        </div>
        <div class="ruanzhuang clearfix">
        	<h1>毛坯</h1>
            <div id="zzsc15">
<a class="pre"></a>
<div id="wai_box">
<div class="zzsc_box">
<ul>
<li><a href="#" class="images"><img src="images/01.jpg" /></a></li>
<li><a href="#" class="images"><img src="images/tianjia.jpg" /></a></li>
</ul>
</div>
</div>
<a class="next"></a>
</div>
        </div>
        <div class="miaoshu">案例描述：<br />
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum
	<a class="editIcon08"><img src="images/edit.png" /></a>
	</div>
    </div>
</div>
<div class="baocun clearfix">
	<ul>
    	<li><a  class="xuanzhong" href="javascript:void()">保存</a></li>
        <li><a href="javascript:void()">取消</a></li>
    </ul>
</div>
<div class="footer"><span>版权所有 © XXXX装修公司</span><span>备案号：IP15263542268</span></div>

<!--登录注册弹出层-->
<div id="inline1" style="width:390px;display: none;">
		<ul class="logTablist clearfix">
        	<li class="tabon">
            	<a href="javascript:void(0)">登录</a>
            </li>
            <li style="mgr0">
            	<a href="javascript:void(0)">注册</a>
            </li>
        </ul>
        
        <div class="logWrap logWrapShow">
        	<input placeholder="用户名" type="text" class="inputType" />
            <input placeholder="密码" type="text" class="inputType" />
            <div class="logForgets"><a href="javascript:void(0)">忘记密码？</a></div>
            <input type="submit" value="登录" class="inputSmt" />
        </div>
        
        <div class="logWrap">
        	<input placeholder="手机号" type="text" class="inputType" />
            <input placeholder="验证码" type="text" class="inputType" />
            <input placeholder="邀请码" type="text" class="inputType" />
            <input type="submit" value="提交" class="inputSmt" />
        </div>
        
     
</div>
</body>
</html>
