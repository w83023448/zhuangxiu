<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!-- 登录操作栏 -->
<div class="top">
	<ul>
		<li class="logined" style="display: none;"><a
			href="javascript:exit()">退出</a></li>
		<li class="logined" style="display: none;" id="userinfo"></li>
		<li class="yinchang">
		<a href="#LOGIN_AND_REGISTET" class="fancybox">
		<img src="images/zhuce.png" />注册</a></li>
		<li class="yinchang">
			<a href="#LOGIN_AND_REGISTET" class="fancybox">
		<img src="images/login.png" align="middle"
				width="21" height="21" />登录</a></li>
		<li style="padding-bottom:0;"><a href="javascript:void(0)"
			class="sousuoLink"><img src="images/sousuo.png" /> </a> <em
			class="clearfix searchEm"> <span><input type="text"
					placeholder="试试关键字搜索更多" value=""> </span> <span><a href="#"><img
						src="images/sousuo02.jpg"> </a> </span> </em>
		</li>
	</ul>
</div>