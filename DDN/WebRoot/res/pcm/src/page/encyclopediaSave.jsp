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
<title>装修百科</title>
<link href="css/pc_css.css" rel="stylesheet" type="text/css" />
<link href="css/mobile_css.css" rel="stylesheet" type="text/css" />

<!--后台交互-->
<script type="text/javascript" src="res/jquery/jquery.min.js"></script>
<script type="text/javascript" src="res/pcm/pcm.src.js"></script>
<!--后台交互 end-->

<script src="js/jquery.min.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css" media="screen" />
<!--fancybox end-->

<!--enplaceholder-->
<script type="text/javascript" src="js/enplaceholder.js"></script>
<script type="text/javascript">
$(function(){
	$(".sousuoLink").click(function(){
		$(this).hide();
		$(this).next(".searchEm").show();
		});
	
	$(".jiazai").click(function(){
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
	
	
	});
</script>
<style>
			#MY_JCROP_SELECT_IMAGE {
				left: 0;
				height: 100%;
				opacity: 0;
				position: absolute;
				top: 0;
				width: 100%;
			}
		</style>
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
        <li class="yinchang"><a href="#inline1" class="fancybox"><img src="images/login.png" align="middle" width="21" height="21" />登录</a></li>
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
<div class="baike_title"><a href="#">装修百科</a></div>
<div class="baike_main clearfix">
	<h1>为什么装修房屋过后很久依然有股难闻的味道？</h1>
  <div class="baike_main_mid_bianji">
    <input name="" type="text" placeholder="富文本编辑条件区.............." />
    <span><img src="images/shangchuan.jpg" /></span>
    <span>如上图所示,装修的房屋一般都包含：A\B\C\等化学物质，而这类物质又难以挥发，所以...</span>
    </div>
    <div class="sousuo">
    	<input name="" type="text" placeholder="检索关键字,如:有害物质;甲醛" />
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
