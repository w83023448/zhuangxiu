// 与后台交互关键字搜索
function searchKeywords() {
	Pcm.ajax.postMVC({
		noAlert : true,
		server : 'commonRPC',
		method : 'register'
	});
};
//忘记密码操作
function forget_password() {
	alert("请联系管理员");
};
// 与后台交互检查session
function checkSession() {
	Pcm.ajax.postMVC({
		server : 'commonRPC',
		method : 'getUser',
		success : function(data) {
			if (data != null) {
				$(".yinchang").hide();
				$(".logined").show();
				$("#userinfo").empty();
				$("#userinfo").append(data.username);
			} else {
				$(".yinchang").show();
				$(".logined").hide();
			}
			console.log(data);
		},
		failure : function(msg) {
			alert(msg);
		}
	});
};

//与后台交互登录操作
function login() {
	var USER_NAME = $("#USER_NAME").val();
	var USER_PWD = $("#USER_PWD").val();
	Pcm.ajax.postMVC({
		noAlert : true,
		server : 'commonRPC',
		method : 'login',
		params : [ {
			username : USER_NAME,
			password : USER_PWD
		} ],
		success : function(data) {
			if (data) {
				checkSession();
				$.fancybox.close();
			} else {
				alert(data);
			}
		},
		failure : function(msg) {
			$("#ERROE_LOGIN_SPACE").show();
			$("#ERROE_LOGIN_INFO").empty();
			$("#ERROE_LOGIN_INFO").append(msg);
		}
	});
};

// 与后台交互注册操作
function register() {
	var PHONE = $("#PHONE").val();
	var PWD = $("#PWD").val();
	var INVITATION_CODE = $("#INVITATION_CODE").val();
	Pcm.ajax.postMVC({
		server : 'commonRPC',
		method : 'register',
		params : [ PHONE, PWD, INVITATION_CODE ],
		success : function(data) {
			if (data) {
				checkSession();
				$.fancybox.close();
			} else {
				alert(data);
			}
			console.log(data);
		},
		failure : function(msg) {
			if(msg.indexOf("账户")){
				$("#ERROE_PHONE_SPACE").show();
				$("#ERROE_PHONE_INFO").empty();
				$("#ERROE_PHONE_INFO").append(msg);
			}else if(msg.indexOf("密码")){
				$("#ERROE_PASSWORD_SPACE").show();
				$("#ERROE_PASSWORD_INFO").empty();
				$("#ERROE_PASSWORD_INFO").append(msg);
			}else{
				$("#ERROE_INVITATION_CODE_SPACE").show();
				$("#ERROE_INVITATION_CODE_INFO").empty();
				$("#ERROE_INVITATION_CODE_INFO").append(msg);
			}
		}
	});
};

//出现错误提示框后点击input弹框消失
$(function() {
	$("#USER_NAME_SPACE").find("input").click(function() {
		$(".tishi").hide();
	});
	$("#PHONE_SPACE").find("input").click(function() {
		$(".tishi").hide();
	});
});

// 与后台交互退出登录
function exit() {
	Pcm.ajax.postMVC({
		server : 'commonRPC',
		method : 'logout'
	});
	$(".yinchang").show();
	$(".logined").hide();
	$("#userinfo").empty();
};

//页面加载完成检查session
$().ready(function(){
	checkSession();
});