<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
   <head>
      <title>Bootstrap DropdownsList</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- ���� Bootstrap -->
      <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 	  
      <!-- jQuery (Bootstrap �� JavaScript �����Ҫ���� jQuery) -->
      <script src="https://code.jquery.com/jquery.js"></script>
      <!-- ���������ѱ���Ĳ�� -->
      <script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js""></script>
   </head>
   <body>
      <div class="dropdown">
    <button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">����
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="#">Java</a>
        </li>
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="#">�����ھ�</a>
        </li>
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="#">����ͨ��/����</a>
        </li>
        <li role="presentation" class="divider"></li>
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="#">���������</a>
        </li>
    </ul>
</div>
 
   </body>
</html>
