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
<title>个人空间查看</title>
<link href="css/pc_css.css" rel="stylesheet" type="text/css" />
<link href="css/mobile_css.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<!--fancybox end-->

<!--enplaceholder-->
<script type="text/javascript" src="js/enplaceholder.js"></script>

<!-- 美化滚动条 -->
<link type="text/css" href="css/jquery.jscrollpane.css" rel="stylesheet"
	media="all" />
<link type="text/css" href="css/jquery.jscrollpane.lozenge.css"
	rel="stylesheet" media="all" />
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>

<!-- 顶部通用js -->
<script src="js/effect/common/top.js"></script>
<!-- 顶部通用js end -->

<!-- 顶部通用交互js -->
<script src="js/request/common/top.js"></script>
<!-- 顶部通用交互js end -->

<script type="text/javascript" id="sourcecode">
    //美化滚动条
	$(function() {
	$('.scroll-pane').jScrollPane();
	$('.scroll-pane-arrows').jScrollPane({
		showArrows:true,horizontalGutter:10
	});
	});

</script>
<script type="text/javascript">
$(function(){
	
	$(".jiazai").click(function(){
		$(".hideLi").fadeIn();
		});
		
	
	//调用placeholder
	//通过value模拟placeholder
	$('input,textarea').placeholder();
	//通过插入元素模拟placeholder
	$('input,textarea').placeholder({isUseSpan:true});
		
	//鼠标划过，出现编辑图标
	$(".chakanCntBox01").hover(function(){
		$(this).find(".editIcon").fadeIn(200);
		},function(){
			$(this).find(".editIcon").fadeOut(200);
			});
	
	//
	$(".chakanCntBox02").hover(function(){
		$(this).find(".editIcon02").fadeIn(200);
		},function(){
			$(this).find(".editIcon02").fadeOut(200);
			});
	
	//
	$(".chakanCntBox03").hover(function(){
		$(this).find(".editIcon03").fadeIn(200);
		},function(){
			$(this).find(".editIcon03").fadeOut(200);
			});

	
	});
</script>
</head>

<body>
	<%@include file="common/loginAndRegiestBox.jsp"%>
	<!-- 代码开始 -->
	<script type="text/javascript">
function b(){
	h = $(window).height();
	t = $(document).scrollTop();
	if(t > 100){
		$('#gotop').show();
	}else{
		$('#gotop').hide();
	}
}
$(document).ready(function(e) {
	b();
	$('#gotop').click(function(){
		$(document).scrollTop(0);	
	});
	$('#code').hover(function(){
			$(this).attr('id','code_hover');
			$('#code_img').show();
		},function(){
			$(this).attr('id','code');
			$('#code_img').hide();
	});
	
});

$(window).scroll(function(e){
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

	<!--查看开始coco--->

	<div class="chakanTop clearfix">
		<div class="cakeNav">
			<a href="javascript:void(0)">案例库</a><span></span><a
				href="javascript:void(0)" class="nowYemian">设计师个人空间</a>
		</div>
		<a class="cakeNew" href="javascript:void(0)"> 新建 </a>
	</div>

	<div class="chakanCnt clearfix">
		<div class="chakanCntBox01">
			<a href="javascript:void(0)"> <img src="images/xjp.jpg" /> </a> <a
				href="javascript:void(0)" class="editIcon"> <img
				src="images/edit.png" /> </a>
		</div>

		<div class="chakanCntBox02">
			<h2 class="clearfix">
				<a href="javascript:void(0)" class="editIcon02"></a>张三
			</h2>
			<div class="scroll-pane">
				<p>
					自从4月8日以来，再未探测到新的电子信号，这可能意味着为黑匣子记录仪定位探测器提供电能的电池，可能已经耗尽。这些电池仅能维持大约一个月，而这个期限已过。
					当官员们确定不会再听到任何声音时，将派出潜水机器人。澳大利亚总理阿博特12日说，针对马来西亚航空公司MH370航班的搜寻可能将持续相当长一段时间，原因是客机“黑匣子”发出的脉冲信号正在迅速减弱。</p>
			</div>
		</div>

		<div class="chakanCntBox03">


			<DIV class="slide-pic-coco" id="slidePic-coco">
				<A class="gray-coco" id="prev-coco" href="javascript:;">前移</A>
				<DIV class="pic-container-coco">
					<UL>
						<LI class="cur-coco">
							<P>
								<a class="date-coco">2012-12-21</a>
							</P></LI>
						<LI class="">
							<P>
								<a class="date-coco">2012-12-21</a>
							</P></LI>
						<LI class="">
							<P>
								<a class="date-coco">2012-12-21</a>
							</P></LI>
						<LI class="">
							<P>
								<a class="date-coco">2012-12-21</a>
							</P></LI>
						<LI class="">
							<P>
								<a class="date-coco">2012-12-21</a>
							</P></LI>
						<LI class="">
							<P>
								<a class="date-coco">2012-12-21</a>
							</P></LI>
					</UL>
				</DIV>
				<A id="next-coco" href="javascript:;">后移</A>
			</DIV>

			<SCRIPT type=text/javascript>
			var areaDailyList = [{}];
			jQuery(function(){
			if (!$('#slidePic-coco')[0]) 
			return;
			var i = 0, p = $('#slidePic-coco ul'), pList = $('#slidePic-coco ul li'), len = pList.length;
			var elePrev = $('#prev-coco'), eleNext = $('#next-coco');
			//var firstClick = false;
			var w = 40, num = 3;
			//p.css('width',w*len);
			if (len <= num) 
			eleNext.addClass('gray-coco');
			function prev(){
			if (elePrev.hasClass('gray-coco')) {
			//alert('已经是第一张了');
			return;
			}
			p.animate({
			marginTop:-(--i) * w
			},500);
			if (i < len - num) {
			eleNext.removeClass('gray-coco');
			}
			if (i == 0) {
			elePrev.addClass('gray-coco');
			}
			}
			function next(){
			if (eleNext.hasClass('gray-coco')) {
			//alert('已经是最后一张了');
			return;
			}
			//p.css('margin-left',-(++i) * w);
			p.animate({
			marginTop:-(++i) * w
			},500);
			if (i != 0) {
			elePrev.removeClass('gray-coco');
			}
			if (i == len - num) {
			eleNext.addClass('gray-coco');
			}
			}
			elePrev.bind('click',prev);
			eleNext.bind('click',next);
			pList.each(function(n,v){
			$(this).click(function(){
			if(n-i == 2){
			next();
			}
			if(n-i == 0){
			prev();
			}
			$('#slidePic-coco ul li.cur-coco').removeClass('cur-coco');
			$(this).addClass('cur-coco');
			show(n);
			}).mouseover(function(){
			$(this).addClass('hover-coco');
			}).mouseout(function(){
			$(this).removeClass('hover-coco');
			});
			});
			function show(i){
			var ad = areaDailyList[i];
			var t = ad.date.split('-');
			$('#dailyTitle').html(ad.title);
			$('#dailyImage').attr('src',ad.image);
			$('#dailyImageFrom').html('' + ad.imageFrom + '');
			$('#dailyContent').html(ad.content);
			$('#dailyDate').html('<em class="ym">' + t[0] + '.' + t[1] + '</em><em class="day">' + t[2] + '</em>');
			var shareRRUrl = encodeURIComponent('http://www.nuomi.com/share365/'+ad.id);
			var shareUrl = encodeURIComponent('http://www.nuomi.com/#reading');
			var shareTitle = encodeURIComponent(ad.title + 'http://www.lanrentuku.com');
			var shareContent = encodeURIComponent(ad.content.substring(0,100)+'...');
			
			}
			});
			</SCRIPT>




		</div>


		<div class="chakanCntBox04">
			<!--<ul class="chakanFengge">
    	<li>
        <input value="选择风格" class="select_txt_top" type="text" readonly="readonly" id="select_txt_top" onclick="showselectbottom()" />
        <input name="" type="text" class="select_but_top" value="v" readonly="readonly" id="select_but_top" onclick="showselectbottom();"/>
        
		<div style="clear:both;display:none; position:absolute;" id="selectbottom">
<input value="风格1" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this);"/>
<input value="风格2" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this);"/>
<input value="风格3" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this);"/>
<input value="风格4" class="select_txt_center select_txt_bottom" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this);"/>
		</div>
        </li>
        
        
        <li>
        <input value="选择价位" class="select_txt_top02" type="text" readonly="readonly" id="select_txt_top02" onclick="showselectbottom02()" />
        <input name="" type="text" class="select_but_top" value="v" readonly="readonly" id="select_but_top02" onclick="showselectbottom02();"/>
        
		<div style="clear:both;display:none;position:absolute;" id="selectbottom02">
<input value="价位1" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected02(this);"/>
<input value="价位2" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected02(this);"/>
<input value="价位3" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected02(this);"/>
<input value="价位4" class="select_txt_center select_txt_bottom" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected02(this);"/>
		</div>
        </li>
        
        
        <li class="mgbt0">
        <input value="选择户型" class="select_txt_top03" type="text" readonly="readonly" id="select_txt_top03" onclick="showselectbottom03()" />
        <input name="" type="text" class="select_but_top" value="v" readonly="readonly" id="select_but_top03" onclick="showselectbottom03();"/>
        
		<div style="clear:both;display:none;position:absolute;" id="selectbottom03">
<input value="户型1" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected03(this);"/>
<input value="户型2" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected03(this);"/>
<input value="户型3" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected03(this);"/>
<input value="户型4" class="select_txt_center select_txt_bottom" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected03(this);"/>
		</div>
        </li>
        
        
        
    </ul>-->
			<!--下拉选择框-->
			<!--<script type="text/javascript">
var bottombgcolor='#f7f7f7';//鼠标移动到下拉菜单后的背景颜色
function $_(sid){return document.getElementById(sid);}
function showbgcolor(obj)
{
	obj.style.backgroundColor=bottombgcolor;
}
function hiddenbgcolor(obj)
{
	obj.style.backgroundColor='';
}
function showselectbottom()
{
	$_('selectbottom').style.display='';
}
function selected(obj)
{
	$_('select_txt_top').value=obj.value;
	$_('selectbottom').style.display='none';
}


function showselectbottom02()
{
	$_('selectbottom02').style.display='';
}
function selected02(obj)
{
	$_('select_txt_top02').value=obj.value;
	$_('selectbottom02').style.display='none';
}


function showselectbottom03()
{
	$_('selectbottom03').style.display='';
}
function selected03(obj)
{
	$_('select_txt_top03').value=obj.value;
	$_('selectbottom03').style.display='none';
}

</script>-->

			<div class="payAddLine clearfix">
				<a class="btn-select" id="btn_select">
					<div class="btn-select-div clearfix">
						<span class="cur-select">风格</span> <span class="cur-select-icon"><img
							src="images/ico-arrow.png" width="11" height="7" />
						</span>
					</div> <select>
						<option>风格1</option>
						<option>风格2</option>
						<option>风格3</option>
						<option>风格4</option>
						<option>风格5</option>
				</select> </a> <a class="btn-select" id="btn_select02">
					<div class="btn-select-div clearfix">
						<span class="cur-select">造价</span> <span class="cur-select-icon"><img
							src="images/ico-arrow.png" width="11" height="7" />
						</span>
					</div> <select>
						<option>造价1</option>
						<option>造价2</option>
						<option>造价3</option>
						<option>造价4</option>
						<option>造价5</option>
				</select> </a> <a class="btn-select" id="btn_select03" style="margin-bottom:0;">
					<div class="btn-select-div clearfix">
						<span class="cur-select">户型</span> <span class="cur-select-icon"><img
							src="images/ico-arrow.png" width="11" height="7" />
						</span>
					</div> <select>
						<option>户型1</option>
						<option>户型2</option>
						<option>户型3</option>
						<option>户型4</option>
						<option>户型5</option>
				</select> </a>

				<script type="text/javascript">
      
			   
			   var $$ = function (id) { 
					  return document.getElementById(id); 
					  } 
					  
					  window.onload = function () { 
					  var btnSelect = $$("btn_select");
					  var btnSelect02 = $$("btn_select02"); 
					  var btnSelect03 = $$("btn_select03");
					  
					  var curSelect = btnSelect.getElementsByTagName("span")[0]; 
					  var curSelect02 = btnSelect02.getElementsByTagName("span")[0];
					  var curSelect03 = btnSelect03.getElementsByTagName("span")[0];
					  
					  var oSelect = btnSelect.getElementsByTagName("select")[0]; 
					  var oSelect02 = btnSelect02.getElementsByTagName("select")[0];
					  var oSelect03 = btnSelect03.getElementsByTagName("select")[0];
					  
					  var aOption = btnSelect.getElementsByTagName("option");
					  var aOption02 = btnSelect02.getElementsByTagName("option");
					  var aOption03 = btnSelect03.getElementsByTagName("option");
					   
					  oSelect.onchange = function () { 
					  var text=oSelect.options[oSelect.selectedIndex].text; 
					  curSelect.innerHTML = text; 
					  }; 
					  
					  oSelect02.onchange = function () { 
					  var text=oSelect02.options[oSelect02.selectedIndex].text; 
					  curSelect02.innerHTML = text; 
					  };
					  
					  oSelect03.onchange = function () { 
					  var text=oSelect03.options[oSelect03.selectedIndex].text; 
					  curSelect03.innerHTML = text; 
					  };
					  
					  }; 
			   
			  
           </script>
			</div>


		</div>

	</div>



	<div class="main_anli clearfix">
		<ul>
			<li class="chakanCntBox03"><a href="javascript:void()"><img
					src="images/img01.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03"><a href="javascript:void()"><img
					src="images/img02.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03"><a href="javascript:void()"><img
					src="images/img03.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03"><a href="javascript:void()"><img
					src="images/img01.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03"><a href="javascript:void()"><img
					src="images/img02.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03"><a href="javascript:void()"><img
					src="images/img03.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03"><a href="javascript:void()"><img
					src="images/img01.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03"><a href="javascript:void()"><img
					src="images/img02.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03"><a href="javascript:void()"><img
					src="images/img01.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>


			<li class="chakanCntBox03 hideLi"><a href="javascript:void()"><img
					src="images/img01.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03 hideLi"><a href="javascript:void()"><img
					src="images/img02.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03 hideLi"><a href="javascript:void()"><img
					src="images/img03.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03 hideLi"><a href="javascript:void()"><img
					src="images/img01.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03 hideLi"><a href="javascript:void()"><img
					src="images/img02.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03 hideLi"><a href="javascript:void()"><img
					src="images/img03.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03 hideLi"><a href="javascript:void()"><img
					src="images/img01.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03 hideLi"><a href="javascript:void()"><img
					src="images/img02.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
			<li class="chakanCntBox03 hideLi"><a href="javascript:void()"><img
					src="images/img03.jpg" />
					<p>3室2厅 20万 复古</p>
			</a> <a href="javascript:void(0)" class="editIcon03"> <img
					src="images/edit.png" /> </a></li>
		</ul>
	</div>
	<div class="jiazai">
		<a href="javascript:void(0)"><img src="images/jiazai.png" />
		</a>
	</div>

	<div class="footer">
		<span>版权所有 © XXXX装修公司</span><span>备案号：IP15263542268</span>
	</div>

</body>
</html>
