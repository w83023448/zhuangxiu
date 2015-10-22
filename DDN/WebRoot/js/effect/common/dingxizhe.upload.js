// #MY_JCROP_IMAGE        是预览图片的img的id替换即可使用
// #MY_JCROP_SELECT_IMAGE 是上传按钮的id替换即可使用
var jcrop_api;
function openDiv(picId) {
	$("#UPLOAD_PICTURE").attr("name",picId);
	$("#UPLOAD_POP").show();
}
function closeDiv() {
	
	jcrop_api.setImage("images/tianjia.jpg");
	$("#MY_JCROP_IMAGE").attr("src","images/tianjia.jpg");
	
	$("#UPLOAD_POP").hide();
}
jQuery(function($) {
	// 上传截图框架使用
	function initJcrop() {
		$("#MY_JCROP_IMAGE").Jcrop({
			allowSelect : false,
			setSelect : [ 0, 0, 400, 300 ],
			minSize : [ 40, 30 ],
			aspectRatio : 4 / 3,
			boxWidth : 400,
			boxHeight : 300,
			onChange : updatePreview
		}, function() {
			jcrop_api = this;
		});
	}

	// 初始化上传截图js
	initJcrop();

	// 预览图在小于最小设定值的情况下变为最小设定值(四个角选框处理)
	function updatePreview(c) {
		if (parseInt(c.w) == 0 || parseInt(c.h) == 0) {
			var x1, x2, y1, y2;
			if (parseInt(c.x) > 0 && parseInt(c.y) == 0) {
				x1 = jcrop_api.getBounds()[0] - 40;
				x2 = jcrop_api.getBounds()[0];
				y1 = 0;
				y2 = 30;
			} else if (parseInt(c.x) == 0 && parseInt(c.y) > 0) {
				x1 = 0;
				x2 = 40;
				y1 = jcrop_api.getBounds()[1] - 30;
				y2 = jcrop_api.getBounds()[1];
			} else if (parseInt(c.x) > 0 && parseInt(c.y) > 0) {
				x1 = jcrop_api.getBounds()[0] - 40;
				x2 = jcrop_api.getBounds()[0];
				y1 = jcrop_api.getBounds()[1] - 30;
				y2 = jcrop_api.getBounds()[1];
			} else {
				x1 = 0;
				x2 = 40;
				y1 = 0;
				y2 = 30;
			}
			jcrop_api.setSelect([ x1, y1, x2, y2 ]);
		}
		$("#x").val(c.x);
		$("#y").val(c.y);
		$("#w").val(c.w);
		$("#h").val(c.h);
	}
	;

	// 上传截图改变事件触发，预览图改变
	$("#MY_JCROP_SELECT_IMAGE").change(function(evt) {
		if (!window.FileReader) {
			return;
		}
		var files = evt.target.files;
		for ( var i = 0, f; f = files[i]; i++) {
			if (!f.type.match("image.*")) {
				continue;
			}
			var reader = new FileReader();
			reader.onload = function(e) {
				jcrop_api.setImage(e.target.result);
				$("#MY_JCROP_IMAGE").attr("src",e.target.result);
				initJcrop();
			};
			reader.readAsDataURL(f);
		}
		;
	});
});