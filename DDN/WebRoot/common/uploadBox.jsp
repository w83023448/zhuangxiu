<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!--上传图片弹出层-->
<div style="display:none">
	<div id="UPLOAD_BOX">
		<div id="IMAGE_DIV" align="center">
			<img id="MY_JCROP_IMAGE" />
			<input id="x" type="hidden" name="x"></input>
			<input id="y" type="hidden" name="y"></input>
			<input id="w" type="hidden" name="w"></input>
			<input id="h" type="hidden" name="h"></input>
		</div>
		<p style="color: red;">上传的图片分辨率必须大于400x300</p>
		<div id="MY_UPLOAD_BUTTONS">
			<div>
				<button>选择图片</button>
				<input id="MY_JCROP_SELECT_IMAGE" type="file" accept=".png,.jpg" />
			</div>
			<div>
				<button onclick="javascript:uploadPic()">上传图片</button>
			</div>
		</div>
	</div>
</div>