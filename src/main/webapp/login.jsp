<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String base = "http://" + request.getLocalAddr()+":"+request.getLocalPort();
String contextPath = this.getServletContext().getContextPath();
String fule = base + "/" + contextPath + "/";
%>
<!DOCTYPE html>
<html style="height:100%;">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=contextPath%>/css/base.css?ts=<%=request.getAttribute("ts") %>" type="text/css" />
<link rel="stylesheet" href="<%=contextPath%>/css/login.css?ts=<%=request.getAttribute("ts") %>" type="text/css" />
<link rel="stylesheet" href="<%=contextPath%>/css/bootstrap.min.css">
<script type="text/javascript" src="<%=contextPath%>/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="<%=contextPath%>/js/bootstrap.min.js"></script>
</head>
<body style="height:100%;">
	<div class="bgdiv" style="background-image:url('/echart/image/loginbk1.jpg');" >
		<div class="title" >长江勘测规划设计研究院</div>
		<div class="row">
			<form class="form-horizontal" autosubmit="return false;" >
				<div class="form-group">
					<label class="col-lg-3 control-label" >用户名</label>
					<div class="col-lg-9">
						<input type="text" class="form-control" name="username" id="username" />
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-3 control-label" >密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
					<div class="col-lg-9">
						<input type="text" class="form-control" name="password" id="password" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-3 control-label" >验证码</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="code" id="code" />
					</div>
					<div class="col-lg-5" style="padding-top:6px;" >
						<span id="ckcode" ></span>
						<a href="javascript:void(0);" onclick="changeImg()" >换一张</a>
					</div>
				</div>
				
				<div class="col-lg-9 col-lg-offset-4">
					<button type="button" onclick="dologin()" class="btn btn-primary" style="width:50%" >登录</button>
				</div>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
function changeImg(){
	$.ajax({
        url:"drawcheckcode.json",
        type:"post",
        dataType:"text",
        success:function(data){
			$("#ckcode").html(data);
        },error:function(jqXHR){
        	console.log("Error: "+jqXHR.status);
        }
	});
}
function dologin(){
	if(check()){
		window.location.href = '<%=fule%>/login.json';
	}
}

function check(){
	/*
	if($("#username").val() == ''){
		alert('请输入用户名');
		return false;
	}
	if($("#password").val() == ''){
		alert('请输入密码');
		return false;
	}
	if($("#code").val() == ''){
		alert('请输入验证码');
		return false;
	}
	if($("#code").val() != $("#ckcode").html()){
		alert('验证码不正确');
		return false;
	}
	*/
	return true;
}
$(document).ready(function(){
	changeImg();
	$("#username").focus();
});
</script>
</html>