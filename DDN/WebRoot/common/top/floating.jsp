<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<!-- logo -->
<div class="logo">
	<img src="images/logo2.png" />
</div>