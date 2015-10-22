<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!--登录注册弹出层-->
<div id="LOGIN_AND_REGISTET" style="width:390px;display: none;">
	<ul class="logTablist clearfix">
		<li class="tabon"><a href="javascript:void(0)">登录</a></li>
		<li style="mgr0"><a href="javascript:void(0)">注册</a></li>
	</ul>

	<div class="logWrap logWrapShow">
		<div id="USER_NAME_SPACE">
			<input id="USER_NAME" placeholder="用户名" type="text" class="inputType" />
			<input id="USER_PWD" placeholder="密码" type="password"
				class="inputType" />
		</div>
		<div id="ERROE_LOGIN_SPACE" class="tishi">
			<div class="tishi_mid" id="ERROE_LOGIN_INFO"></div>
		</div>
		<div class="logForgets">
			<a href="javascript:forget_password()">忘记密码？</a>
		</div>
		<input type="submit" value="登录" class="inputSmt"
			onclick="javascript:login()" onkeypress="javascript:login()" />
	</div>

	<div class="logWrap">

		<div id="PHONE_SPACE">
			<input id="PHONE" placeholder="手机号" type="text" class="inputType" />
			<div id="ERROE_PHONE_SPACE" class="tishi">
				<div class="tishi_top"></div>
				<div class="tishi_mid" id="ERROE_PHONE_INFO"></div>
			</div>

			<input id="PWD" placeholder="密码" type="password" class="inputType" />
			<div id="ERROE_PASSWORD_SPACE" class="tishi">
				<div class="tishi_top"></div>
				<div class="tishi_mid" id="ERROE_PASSWORD_INFO"></div>
			</div>

			<input id="INVITATION_CODE" placeholder="邀请码" type="text"
				class="inputType" />
			<div id="ERROE_INVITATION_CODE_SPACE" class="tishi">
				<div class="tishi_top"></div>
				<div class="tishi_mid" id="ERROE_INVITATION_CODE_INFO"></div>
			</div>
		</div>

		<input type="submit" value="提交" class="inputSmt"
			onkeypress="javascript:register()" onclick="javascript:register()" />
	</div>
</div>