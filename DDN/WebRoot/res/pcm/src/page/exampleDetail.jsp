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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<title>案例详情</title>
<link href="css/pc_css.css" rel="stylesheet" type="text/css" />
<link href="css/mobile_css.css" rel="stylesheet" type="text/css" />
<!--后台交互-->
<script type="text/javascript" src="res/jquery/jquery.min.js"></script>
<script type="text/javascript" src="res/pcm/pcm.src.js"></script>
<!--后台交互 end-->

<script src="js/leftright.js" type=text/javascript></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<!--首页案例切换-->
<script type="text/javascript" charset="utf-8" src="js/zzsc.js"></script>
<!--首页案例切换end-
<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<!--fancybox end-->

<!--enplaceholder-->
<script type="text/javascript" src="js/enplaceholder.js"></script>

<script type="text/javascript">
	$(function() {
		$(".sousuoLink").click(function() {
			$(this).hide();
			$(this).next(".searchEm").show();
		});

		$(".box").hover(function() {
			$(this).find(".boxHover").slideDown(100);
		}, function() {
			$(this).find(".boxHover").slideUp(100);
		});

		//登录注册弹出层
		$('.fancybox').fancybox({
			closeBtn : false
		});

		//调用placeholder
		//通过value模拟placeholder
		$('input,textarea').placeholder();
		//通过插入元素模拟placeholder
		$('input,textarea').placeholder({
			isUseSpan : true
		});

		//登录注册tab切换
		$(".logTablist li").each(function(index, element) {
			$(this).click(function() {
				$(".logTablist li").removeClass("tabon");
				$(this).addClass("tabon");

				$(".logWrap").removeClass("logWrapShow");
				$(".logWrap").eq(index).addClass("logWrapShow");
			});
		});

	});
</script>
</head>

<body>
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
	<div class="anli_h">XXX设计师 XX案例名称</div>
	<div class="anli_main clearfix">
		<div class="anli_main_left">
			<div class="fengmian">
				<a href="#"><img src="images/fengmian01.jpg" />
				</a> <span>封面</span>
			</div>
			<div class="history">
				<h1>历史留言</h1>
				<ul class="history_list">
					<li><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
					</li>
					<li><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
					</li>
					<li><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
					</li>
					<li><a href="javascript:void()">效果特别好，质量过关，很细心，谢谢刘师傅！好评</a>
					</li>
				</ul>
				<div class="shuru">
					<textarea name="" cols="" rows=""></textarea>
				</div>
				<div class="tijiao_button">
					<input type="button" value="提交留言" />
				</div>
			</div>
			<div class="yuyue">
				<ul>
					<li>称呼：<span class="huise">李先生</span>
					</li>
					<li>电话：<span class="huise">13913913999</span>
					</li>
					<li><span class="huise">（可不留电话号码仅通过邮件沟通）</span><br /> 邮箱：<span
						class="huise">1159239858@qq.com</span>
					</li>
				</ul>
				<div class="tijiao_button">
					<input type="button" value="预约设计" />
				</div>
			</div>
		</div>
		<div class="anli_main_right">
			<div id="zzsc02">
				<a class="pre"></a>
				<div id="wai_box">
					<div class="zzsc_box">
						<ul>
							<li><a href="#" class="images"><img src="images/01.jpg" />
							</a>
							</li>
							<li><a href="#" class="images"><img src="images/01.jpg" />
							</a>
							</li>
							<li><a href="#" class="images"><img src="images/01.jpg" />
							</a>
							</li>
						</ul>
						<ul>
							<li><a href="#" class="images"><img src="images/01.jpg" />
							</a>
							</li>
							<li><a href="#" class="images"><img src="images/01.jpg" />
							</a>
							</li>
							<li><a href="#" class="images"><img src="images/01.jpg" />
							</a>
							</li>
						</ul>
						<ul>
							<li><a href="#" class="images"><img src="images/01.jpg" />
							</a>
							</li>
							<li><a href="#" class="images"><img src="images/01.jpg" />
							</a>
							</li>
							<li><a href="#" class="images"><img src="images/01.jpg" />
							</a>
							</li>
						</ul>
					</div>
				</div>
				<a class="next"></a>
			</div>
			<div class="da_title">案例详情</div>
			<div class="ruanzhuang clearfix">
				<h1>软装</h1>
				<div id="zzsc03">
					<a class="pre"></a>
					<div id="wai_box">
						<div class="zzsc_box">
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
						</div>
					</div>
					<a class="next"></a>
				</div>
			</div>
			<div class="ruanzhuang clearfix">
				<h1>家具</h1>
				<div id="zzsc04">
					<a class="pre"></a>
					<div id="wai_box">
						<div class="zzsc_box">
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
						</div>
					</div>
					<a class="next"></a>
				</div>
			</div>
			<div class="ruanzhuang clearfix">
				<h1>安装</h1>
				<div id="zzsc05">
					<a class="pre"></a>
					<div id="wai_box">
						<div class="zzsc_box">
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
						</div>
					</div>
					<a class="next"></a>
				</div>
			</div>
			<div class="ruanzhuang clearfix">
				<h1>油漆</h1>
				<div id="zzsc06">
					<a class="pre"></a>
					<div id="wai_box">
						<div class="zzsc_box">
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
						</div>
					</div>
					<a class="next"></a>
				</div>
			</div>
			<div class="ruanzhuang clearfix">
				<h1>水电</h1>
				<div id="zzsc07">
					<a class="pre"></a>
					<div id="wai_box">
						<div class="zzsc_box">
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
						</div>
					</div>
					<a class="next"></a>
				</div>
			</div>
			<div class="ruanzhuang clearfix">
				<h1>毛坯</h1>
				<div id="zzsc08">
					<a class="pre"></a>
					<div id="wai_box">
						<div class="zzsc_box">
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
							<ul>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
								<li><a href="#" class="images"><img src="images/01.jpg" />
								</a>
								</li>
							</ul>
						</div>
					</div>
					<a class="next"></a>
				</div>
			</div>
			<div class="miaoshu">
				案例描述：<br /> Lorem ipsum dolor sit amet, consectetur adipiscing
				elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet
				lacus accumsan et viverra justo commodo. Proin sodales pulvinar
				tempor. Cum sociis natoque penatibus et magnis dis parturient
				montes, nascetur ridiculus mus. Nam fermentum
			</div>
		</div>
	</div>
	<div class="footer">
		<span>版权所有 © XXXX装修公司</span><span>备案号：IP15263542268</span>
	</div>

	<!--登录注册弹出层-->
	<div id="inline1" style="width:390px;display: none;">
		<ul class="logTablist clearfix">
			<li class="tabon"><a href="javascript:void(0)">登录</a></li>
			<li style="mgr0"><a href="javascript:void(0)">注册</a></li>
		</ul>

		<div class="logWrap logWrapShow">
			<input placeholder="用户名" type="text" class="inputType" /> <input
				placeholder="密码" type="text" class="inputType" />
			<div class="logForgets">
				<a href="javascript:void(0)">忘记密码？</a>
			</div>
			<input type="submit" value="登录" class="inputSmt" />
		</div>

		<div class="logWrap">
			<input placeholder="手机号" type="text" class="inputType" /> <input
				placeholder="验证码" type="text" class="inputType" /> <input
				placeholder="邀请码" type="text" class="inputType" /> <input
				type="submit" value="提交" class="inputSmt" />
		</div>


	</div>
</body>
</html>
