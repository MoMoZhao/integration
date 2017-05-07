<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>just for test</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form id="form" action="<%=request.getContextPath()%>/userTest/insertUserTest">
    	<input id="id" name="id"/>
    	<input id="name" name="name"/>
    	<a href="<%=request.getContextPath()%>/userTest/insertUserTest?id=1&name=a">test</a>
    </form>
  </body>
  
  <script type="text/javascript">
  	
  	
  	/* function onclick(){
  		debugger;
  		var form = $("#form");
  	
  		var formData = form.getData();
  	
  	} */
  </script>
</html>
