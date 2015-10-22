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
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>装修百科</title>
<link href="css/pc_css.css" rel="stylesheet" type="text/css" />
<link href="css/mobile_css.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css"
	media="screen" />
<!--fancybox end-->

<!--enplaceholder-->
<script type="text/javascript" src="js/enplaceholder.js"></script>

<!-- 顶部通用js -->
<script src="js/effect/common/top.js"></script>
<!-- 顶部通用js end -->

<!-- 顶部通用交互js -->
<script src="js/request/common/top.js"></script>
<!-- 顶部通用交互js end -->

<script type="text/javascript">
	$(function() {

		$(".jiazai").click(function() {
			$(".hideLi").fadeIn();
		});

		//调用placeholder
		//通过value模拟placeholder
		$('input,textarea').placeholder();
		//通过插入元素模拟placeholder
		$('input,textarea').placeholder({
			isUseSpan : true
		});

		//鼠标划过，出现编辑图标
		$(".chakanCntBox01").hover(function() {
			$(this).find(".editIcon").fadeIn(200);
		}, function() {
			$(this).find(".editIcon").fadeOut(200);
		});

		//
		$(".chakanCntBox02").hover(function() {
			$(this).find(".editIcon02").fadeIn(200);
		}, function() {
			$(this).find(".editIcon02").fadeOut(200);
		});
		//
		$(".baike_main").hover(function() {
			$(this).find(".xuanfu").fadeIn(200);
		}, function() {
			$(this).find(".xuanfu").fadeOut(200);
		});

	});
</script>
</head>

<body>
	<%@include file="common/loginAndRegiestBox.jsp"%>
	<!-- 代码开始 -->
	<script type="text/javascript">
		function b() {
			h = $(window).height();
			t = $(document).scrollTop();
			if (t > 100) {
				$('#gotop').show();
			} else {
				$('#gotop').hide();
			}
		}
		$(document).ready(function(e) {
			b();
			$('#gotop').click(function() {
				$(document).scrollTop(0);
			});
			$('#code').hover(function() {
				$(this).attr('id', 'code_hover');
				$('#code_img').show();
			}, function() {
				$(this).attr('id', 'code');
				$('#code_img').hide();
			});

		});

		$(window).scroll(function(e) {
			b();
		});
	</script>
	<div id="code"></div>
	<div id="code_img"></div>
	<a id="gotop" href="javascript:void(0)"></a>
	<!-- 代码结束 -->

	<div class="top">
		<ul>
			<li class="yinchang"><a href="#inline1" class="fancybox"><img
					src="images/zhuce.png" />注册</a>
			</li>
			<li class="yinchang"><a href="#inline1" class="fancybox"><img
					src="images/login.png" align="middle" width="21" height="21" />登录</a>
			</li>
			<li style="padding-bottom:0;"><a href="javascript:void(0)"
				class="sousuoLink"><img src="images/sousuo.png" />
			</a> <em class="clearfix searchEm"> <span><input type="text"
						placeholder="试试关键字搜索更多的案例吧" value="">
				</span> <span><a href="#"><img src="images/sousuo02.jpg">
					</a>
				</span> </em></li>
		</ul>

	</div>
	<div class="logo">
		<img src="images/logo2.png" />
	</div>
	<div class="nav">
		<ul>
			<li><a href="index.html"><span class="title_icon"><img
						src="images/icon_index.jpg" />
				</span><span class="title">首页</span>
			</a>
			</li>
			<li><a href="anli.html"><span class="title_icon"><img
						src="images/icon_anli01.jpg" />
				</span><span class="title nav_xianshi">搜索案例</span>
			</a>
			</li>
			<li id="aboutus"><a href="index.html#anli_title02"><span
					class="title_icon"><img src="images/icon_about.jpg" />
				</span><span class="title">关于我们</span>
			</a>
			</li>
			<li id="contactus"><a href="index.html#anli_title03"><span
					class="title_icon"><img src="images/icon_contact.jpg" />
				</span><span class="title">联系我们</span>
			</a>
			</li>
		</ul>
	</div>
	<div class="baike_title">
		<a href="#">装修百科</a>
	</div>
	<div class="baike_main clearfix">
		<h1>为什么装修房屋过后很久依然有股难闻的味道？</h1>
		<div class="baike_main_mid clearfix">
			<div class="baike_main_left">答：</div>
			<div class="baike_main_right">
				<span>因为新装修的房屋都会包含一定的有害物质。</span> <span><img
					src="images/datu.jpg" />
				</span> <span>如上图所示,装修的房屋一般都包含：A\B\C\等化学物质，而这类物质又难以挥发，所以...</span>
			</div>
		</div>
		<!--鼠标放上去悬浮-->
		<div class="xuanfu">
			<ul>
				<li><a href="#">新增</a>
				</li>
				<li><a href="zhuangxiubaike_bianji.html">编辑</a>
				</li>
				<li><a href="#">删除</a>
				</li>
			</ul>
		</div>
		<!--鼠标放上去悬浮 end-->
	</div>
	<div class="footer" style="margin-top:40px;">
		<span>版权所有 © XXXX装修公司</span><span>备案号：IP15263542268</span>
	</div>

</body>
</html>
