// 与后台交互加载案例
function loadExample() {
	Pcm.ajax.postMVC({
		noAlert : true,
		server : 'commonRPC',
		method : 'register'
	});
};

// 与后台交互联系我们
function contact() {
	$("#CONTACT_INFO").val();
	var CONTACT_NAME = $("#CONTACT_NAME").val();
	var CONTACT_EMAIL = $("#CONTACT_EMAIL").val();
	var CONTACT_PHONE = $("#CONTACT_PHONE").val();
	var CONTACT_INFO = $("#CONTACT_INFO").val();
	Pcm.ajax.postMVC({
		noAlert : true,
		server : 'commonRPC',
		method : 'register',
		params : [ CONTACT_NAME, CONTACT_EMAIL, CONTACT_PHONE, CONTACT_INFO ],
		success : function(data) {
			if (data) {
				location.reload();
			} else {
				alert(data);
			}
			console.log(data);
		},
		failure : function(msg) {
			alert(msg);
		}
	});
};