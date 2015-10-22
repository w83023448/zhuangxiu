$(function() {
	//搜索按钮
	$(".sousuoLink").click(function() {
		$(this).hide();
		$(this).next(".searchEm").show();
	});
	
	// 登录注册弹出层
	$(".fancybox").fancybox({
		closeBtn : false
	});
	$(".fancybox").click(function() {
		$.fancybox.open("#LOGIN_AND_REGISTET");
	});
	
	// 登录注册tab切换
	$(".logTablist li").each(function(index, element) {
		$(this).click(function() {
			$(".logTablist li").removeClass("tabon");
			$(this).addClass("tabon");

			$(".logWrap").removeClass("logWrapShow");
			$(".logWrap").eq(index).addClass("logWrapShow");
		});
	});
});