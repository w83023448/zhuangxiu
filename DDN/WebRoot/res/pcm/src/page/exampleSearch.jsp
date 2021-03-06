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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>案例搜索</title>
<link href="css/pc_css.css" rel="stylesheet" type="text/css" />
<link href="css/mobile_css.css" rel="stylesheet" type="text/css" />

<!--后台交互-->
<script type="text/javascript" src="res/jquery/jquery.min.js"></script>
<script type="text/javascript" src="res/pcm/pcm.src.js"></script>
<!--后台交互 end-->

<script src="js/jquery.min.js"></script>
<!-- Add fancyBox main JS and CSS files -->
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css" media="screen" />
<!--fancybox end-->

<!--enplaceholder-->
<script type="text/javascript" src="js/enplaceholder.js"></script>
<script type="text/javascript">
$(function(){
	$(".sousuoLink").click(function(){
		$(this).hide();
		$(this).next(".searchEm").show();
		});
	
	$(".jiazai").click(function(){
		$(".hideLi").fadeIn();
		});
		
		
		
    //登录注册弹出层
	$('.fancybox').fancybox(
	{
		closeBtn  : false
		}
	);
	
	//调用placeholder
	//通过value模拟placeholder
	$('input,textarea').placeholder();
	//通过插入元素模拟placeholder
	$('input,textarea').placeholder({isUseSpan:true});
		
    //登录注册tab切换
	$(".logTablist li").each(function(index, element) {
        $(this).click(function(){
			$(".logTablist li").removeClass("tabon");
			$(this).addClass("tabon");
			
			$(".logWrap").removeClass("logWrapShow");
			$(".logWrap").eq(index).addClass("logWrapShow");
			});
    });
	
	
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

	//
	$(".chakanCntBox05").hover(function(){
		$(this).find(".editIcon05").fadeIn(200);
		},function(){
			$(this).find(".editIcon05").fadeOut(200);
			});
	
	});
</script>

</head>

<body>
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
    	<li  class="yinchang"><a href="#inline1" class="fancybox"><img src="images/zhuce.png" />注册</a></li>
        <li  class="yinchang"><a href="#inline1" class="fancybox"><img src="images/login.png" align="middle" width="21" height="21" />登录</a></li>
        <li style="padding-bottom:0;">
        	<a href="javascript:void(0)" class="sousuoLink"><img src="images/sousuo.png" /></a>
        	 <em class="clearfix searchEm">
    			<span><input type="text" placeholder="试试关键字搜索更多的案例吧" value=""></span>
        		<span><a href="#"><img src="images/sousuo02.jpg"></a></span>
   			 </em>
        </li>
    </ul>

</div>
<div class="logo"><img src="images/logo2.png" /></div>
<div class="nav">
	<ul>
    	<li><a href="index.html"><span class="title_icon"><img src="images/icon_index.jpg" /></span><span class="title">首页</span></a></li>
        <li><a href="anli.html"><span class="title_icon"><img src="images/icon_anli01.jpg" /></span><span class="title nav_xianshi">搜索案例</span></a></li>
        <li id="aboutus"><a href="index.html#anli_title02"><span class="title_icon"><img src="images/icon_about.jpg" /></span><span class="title">关于我们</span></a></li>
        <li id="contactus"><a href="index.html#anli_title03"><span class="title_icon"><img src="images/icon_contact.jpg" /></span><span class="title">联系我们</span></a></li>
    </ul>
</div>
<div class="xiala clearfix">
	<em class="clearfix">
    	<span class="anniu01"><input  type="text" placeholder="试试关键字搜索更多的案例吧" value="" /></span>
        <span class="anniu02"><a href="#"><img src="images/sousuo02.jpg" /></a></span>
    </em>
    <!--<ul>
    	<li>
        <input value="风格" class="select_txt_top" type="text" readonly="readonly" id="select_txt_top" onclick="showselectbottom()" />
        <input name="" type="text" class="select_but_top" value="v" readonly="readonly" id="select_but_top" onclick="showselectbottom();"/>
        
		<div style="clear:both;display:none;" id="selectbottom">
<input value="风格1" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this);"/>
<input value="风格2" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this);"/>
<input value="风格3" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this);"/>
<input value="风格4" class="select_txt_center select_txt_bottom" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected(this);"/>
		</div>
        </li>
        
        
        <li>
        <input value="风格" class="select_txt_top02" type="text" readonly="readonly" id="select_txt_top02" onclick="showselectbottom02()" />
        <input name="" type="text" class="select_but_top" value="v" readonly="readonly" id="select_but_top02" onclick="showselectbottom02();"/>
        
		<div style="clear:both;display:none;" id="selectbottom02">
<input value="风格1" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected02(this);"/>
<input value="风格2" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected02(this);"/>
<input value="风格3" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected02(this);"/>
<input value="风格4" class="select_txt_center select_txt_bottom" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected02(this);"/>
		</div>
        </li>
        
        
        <li>
        <input value="风格" class="select_txt_top03" type="text" readonly="readonly" id="select_txt_top03" onclick="showselectbottom03()" />
        <input name="" type="text" class="select_but_top" value="v" readonly="readonly" id="select_but_top03" onclick="showselectbottom03();"/>
        
		<div style="clear:both;display:none;" id="selectbottom03">
<input value="风格1" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected03(this);"/>
<input value="风格2" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected03(this);"/>
<input value="风格3" class="select_txt_center" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected03(this);"/>
<input value="风格4" class="select_txt_center select_txt_bottom" type="text" readonly="readonly" onmouseover="showbgcolor(this);" onmouseout="hiddenbgcolor(this);" onclick="selected03(this);"/>
		</div>
        </li>
        
        
        
    </ul>-->
    
    <div class="payAddLine clearfix">
        	<a class="btn-select fl" id="btn_select"> 
            	<div class="btn-select-div clearfix">
                	<span class="cur-select">风格</span>
                	<span class="cur-select-icon"><img src="images/ico-arrow.png" width="11" height="7"/></span>
                </div>
                <select> 
                <option>风格1</option> 
                <option>风格2</option> 
                <option>风格3</option> 
                <option>风格4</option> 
                <option>风格5</option> 
                </select> 
           </a> 
           
           <a class="btn-select fl" id="btn_select02"> 
                <div class="btn-select-div clearfix">
                	<span class="cur-select">造价</span>
                	<span class="cur-select-icon"><img src="images/ico-arrow.png" width="11" height="7"/></span>
                </div>
                <select> 
                <option>造价1</option> 
                <option>造价2</option> 
                <option>造价3</option> 
                <option>造价4</option> 
                <option>造价5</option> 
                </select> 
           </a>
           
           <a class="btn-select fl" id="btn_select03"> 
                <div class="btn-select-div clearfix">
                	<span class="cur-select">户型</span>
                	<span class="cur-select-icon"><img src="images/ico-arrow.png" width="11" height="7"/></span>
                </div> 
                <select> 
                <option>户型1</option> 
                <option>户型2</option> 
                <option>户型3</option> 
                <option>户型4</option> 
                <option>户型5</option> 
                </select> 
           </a>
           
           <script type="text/javascript">
      
			   
			   var $$ = function (id) { 
					  return document.getElementById(id); 
					  };
					  
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
					  } ;
					  
					  oSelect02.onchange = function () { 
					  var text=oSelect02.options[oSelect02.selectedIndex].text; 
					  curSelect02.innerHTML = text; 
					  } ;
					  
					  oSelect03.onchange = function () { 
					  var text=oSelect03.options[oSelect03.selectedIndex].text; 
					  curSelect03.innerHTML = text; 
					  } ;
					  
					  } ;
			   
			  
           </script>
        </div>
    
    
</div>
<div class="main_anli clearfix">
	<ul>
    	<li class="chakanCntBox05"><a href="javascript:void()"><img src="images/img01.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	<li class="chakanCntBox05"><a href="javascript:void()"><img src="images/img02.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	<li class="chakanCntBox05"><a href="javascript:void()"><img src="images/img03.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	<li class="chakanCntBox05"><a href="javascript:void()"><img src="images/img01.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	<li class="chakanCntBox05"><a href="javascript:void()"><img src="images/img02.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	<li class="chakanCntBox05"><a href="javascript:void()"><img src="images/img03.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
     	<li class="chakanCntBox05"><a href="javascript:void()"><img src="images/img01.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	<li class="chakanCntBox05"><a href="javascript:void()"><img src="images/img02.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	<li class="chakanCntBox05"><a href="javascript:void()"><img src="images/img03.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
          
        
        <li class="chakanCntBox05 hideLi"><a href="javascript:void()"><img src="images/img01.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	 <li class="chakanCntBox05 hideLi"><a href="javascript:void()"><img src="images/img02.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	 <li class="chakanCntBox05 hideLi"><a href="javascript:void()"><img src="images/img03.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	<li class="chakanCntBox05 hideLi"><a href="javascript:void()"><img src="images/img01.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	 <li class="chakanCntBox05 hideLi"><a href="javascript:void()"><img src="images/img02.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	 <li class="chakanCntBox05 hideLi"><a href="javascript:void()"><img src="images/img03.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
     	<li class="chakanCntBox05 hideLi"><a href="javascript:void()"><img src="images/img01.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	 <li class="chakanCntBox05 hideLi"><a href="javascript:void()"><img src="images/img02.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
      	 <li class="chakanCntBox05 hideLi"><a href="javascript:void()"><img src="images/img03.jpg" />
    	  <p>设计师名字 户型 造价</p></a>
          <a href="javascript:void(0)" class="editIcon05">
        	<img src="images/touxiang01.jpg"/>
          </a>
        </li>
    </ul>
</div>
<div class="jiazai"><a href="javascript:void(0)"><img src="images/jiazai.png" /></a></div>

<div class="footer"><span>版权所有 © XXXX装修公司</span><span>备案号：IP15263542268</span></div>

<!--下拉选择框-->
<script type="text/javascript">
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

</script>



<!--登录注册弹出层-->
<div id="inline1" style="width:390px;display: none;">
		<ul class="logTablist clearfix">
        	<li class="tabon">
            	<a href="javascript:void(0)">登录</a>
            </li>
            <li style="mgr0">
            	<a href="javascript:void(0)">注册</a>
            </li>
        </ul>
        
        <div class="logWrap logWrapShow">
        	<input placeholder="用户名" type="text" class="inputType" />
            <input placeholder="密码" type="text" class="inputType" />
            <div class="logForgets"><a href="javascript:void(0)">忘记密码？</a></div>
            <input type="submit" value="登录" class="inputSmt" />
        </div>
        
        <div class="logWrap">
        	<input placeholder="手机号" type="text" class="inputType" />
            <input placeholder="验证码" type="text" class="inputType" />
            <input placeholder="邀请码" type="text" class="inputType" />
            <input type="submit" value="提交" class="inputSmt" />
        </div>
        
     
</div>


</body>
</html>

