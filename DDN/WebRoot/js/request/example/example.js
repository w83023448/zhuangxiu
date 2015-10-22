//后台交互 添加案例
function uploadExample(){
	//户型图图片数组
	var huxingtuUrls =[];
	$(".huxingtu").each(function(){
		huxingtuUrls.push(this.src);
	});
	//软装图片数组
	var ruanzhuangUrls =[];
	$(".ruanzhuang").each(function(){
		ruanzhuangUrls.push(this.src);
	});
	//家居图片数组
	var jiajuUrls =[];
	$(".jiaju").each(function(){
		jiajuUrls.push(this.src);
	});
	//安装图片数组
	var anzhuangUrls =[];
	$(".anzhuang").each(function(){
		anzhuangUrls.push(this.src);
	});
	//油漆图片数组
	var youqiUrls =[];
	$(".youqi").each(function(){
		youqiUrls.push(this.src);
	});
	//水电图片数组
	var shuidianUrls =[];
	$(".shuidian").each(function(){
		shuidianUrls.push(this.src);
	});
	//毛坯图片数组
	var maopiUrls =[];
	$(".maopi").each(function(){
		maopiUrls.push(this.src);
	});
	alert($("#EDIT_EXAMPLE_NAME").val());
	alert($("#EDIT_EXAMPLE_DESCRIBE").val());
	Pcm.ajax.postMVC({
		server : 'exampleRpc',
		method : 'add',
		params : [{
			name : $("#EDIT_EXAMPLE_NAME").val(),
			coverUrl : $("#EDIT_EXAMPLE_COVER")[0].src,
			describes : $("#EDIT_EXAMPLE_DESCRIBE").val(),
			pics:[{
					typeCode:"huxingtu",
					urls: function(){
							var picUrls = [];
							$(".huxingtu").each(function(){
								picUrls.push(this.src);
								alert(this.src);
							});
							return picurls;
						},
					
				},
				{
					typeCode:"ruanzhuang",
					urls:huxingtuUrls,
				},
				{
					typeCode:"jiaju",
					urls:jiajuUrls,
				},
				{
					typeCode:"anzhuang",
					urls:anzhuangUrls,
				},
				{
					typeCode:"youqi",
					urls:youqiUrls,
				},
				{
					typeCode:"shuidian",
					urls:shuidianUrls,
				},
				{
					typeCode:"maopi",
					urls:maopiUrls,
				}
			],
		}],
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
}

//后台交互 上传文件
function uploadPic(){
	alert($("#UPLOAD_PICTURE").attr("name"));
	if($("#MY_JCROP_IMAGE")[0].src == null || $("#MY_JCROP_IMAGE")[0].src == ""
		|| $("#MY_JCROP_IMAGE")[0].src.indexOf("shangchuan.jpg")>0){
		alert("请选择要上传的图片");
	}else{
		Pcm.ajax.uploadFile({
			fileElementId : "MY_JCROP_SELECT_IMAGE",
//			params:{
//				x : $("#x").val(),
//				y : $("#y").val(),
//				w : $("#w").val(),
//				h : $("#h").val()
//			},
			success : function(data) {
				alert(data);
				console.log(data);
				closeDiv();
			},failure : function(msg) {
				alert(msg);
			}
		});
		//将要修改或添加图片的位置更改图片
		$($("#UPLOAD_PICTURE").attr("name")).attr("src",$("#MY_JCROP_IMAGE").attr("src"));
	}
}