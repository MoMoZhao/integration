<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta charset="utf-8"> 
	<title>资产托管_项目管理系统</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/common/bootstrap/css/bootstrap.min.css">
	<script src="<%=request.getContextPath() %>/common/jquery/jquery-1.9.1.min.js"></script>
	<script src="<%=request.getContextPath() %>/common/bootstrap/js/bootstrap.min.js"></script>
	
	
	<style type="text/css">
		/* .dropdown-submenu {  
            position: relative;  
        }   */
        
/*         设置submenu位置 */
        .dropdown-submenu > .dropdown-menu {  
            top: 0;  
            left: 100%;  
/*             margin-top: -6px;   */
/*             margin-left: -1px;   */
/*             -webkit-border-radius: 0 6px 6px 6px;   */
/*             -moz-border-radius: 0 6px 6px;   */
/*             border-radius: 0 6px 6px 6px;   */
        } 
        
/*         让submenu显示 */
        .dropdown-submenu:hover > .dropdown-menu {  
            display: block; 
        }  
        
        .dropdown:hover > .dropdown-menu {  
            display: block; 
        }  
        
/*         设置submenu的右侧箭头 */
        .dropdown-submenu > a:after {  
            display: block;  
            content: " ";  
            float: right;  
            width: 0;  
            height: 0;  
            border-color: transparent;  
            border-style: solid;  
            border-width: 5px 0 5px 5px;  
            border-left-color: #ccc;  
            margin-top: 5px;  
            margin-right: -10px;  
        } 
        
        #navigateMenu{
        	margin-left: 100px;
        	float:right;
        }
        
        #login{
        	font-size: x-small;
        	font-family: monospace;
        	font-weight: bold;
        	margin-left: 50px;
        }

        .navbar,
        .dropdown-menu
        {
        	background: rgb(30,170,241);
        }
        
        .navbar-default .navbar-nav > li > a,
        .dropdown-menu > li > a{
        	color:white;
        }
        
        .navbar-default .navbar-header > a{
        	color:white;
        	font-size: xx-large;
        	font-weight: bolder;
        } 
        
        .navbar-default .navbar-nav>.open>a, 
        .navbar-default .navbar-nav>.open>a:focus, 
        .navbar-default .navbar-nav>.open>a:hover {
		    background-color:#00BFFF;
        	color:white;
		}
        
        .navbar-default .navbar-nav > li > a:visited,
        .navbar-default .navbar-header > a:visited,
        .dropdown-menu > li > a:visited,
        .navbar-default .navbar-nav > li > a:hover,
        .navbar-default .navbar-header > a:hover,
        .dropdown-menu > li > a:hover,
        .navbar-default .navbar-nav > li > a:active,
        .navbar-default .navbar-header > a:active,
        .dropdown-menu > li > a:active{
        	background-color:#00BFFF;
        	color:white;
        }
/*         { */
/*         	background-color:#00BFFF; */
/*         	color:white; */
/*         }  */
        
/*         body{ */
/*         	background-color: #F8F8F8; */
/*         } */
        
	</style>
	
</head>
<body>

	
			<nav class="navbar navbar-default navbar-fixed-top card-nav-tabs" role="navigation" >
			    <div class="container-fluid" style="margin: 30px;">
				    <div class="navbar-header">
				        <a class="navbar-brand" href="<%= request.getContextPath()%>/">资产托管项目管理</a>
				    </div>
				    <div id="navigateMenu">
				        <ul id="navigation" class="nav navbar-nav"></ul>
			    	</div>
			    
			    </div>
			</nav>
		
	
	
	<script type="text/javascript">
		window.onload = function(){			
			$.ajax({
				type:'POST',
				url:'<%= request.getContextPath()%>/menu/findMenu',
				contentType:'application/json; charset=utf-8',
				dataType:'json',
				success:function(menuList){
					debugger;
					if(menuList){
						setMainMenu(menuList);
						setSubMenu(menuList);
					}
				}
			});
		}
		
		function setMainMenu(menuList){
			debugger;
			for(i = 0; i < menuList.length; i++){
				var menu = menuList[i];
				if(menu.rank == 1){
					var s = '<li id="menu'+menu.id+'">'
								+'<a href="<%= request.getContextPath()%>'+menu.menuUrl+'">'+menu.menuName+'</a>'
							+'</li>';
					
					$("#navigation").append(s);
					if(menu.menuName == "登录"){
						$("#menu"+menu.id).removeAttr("id");
						$("#navigation:last-child").children("li:last-child").attr("id","login");
					}
					
					
					//$("#menu1").attr("class","active");
				}
			}
		}
		
		function setSubMenu(menuList){
			debugger;
			for(i = 0; i < menuList.length; i++){
				var menu = menuList[i];
				if(menu.rank != 1){
					var parentMenu = 'menu'+ menu.parentId;
					var temp = $("#"+parentMenu).attr("class");
					if(!temp){
						if(menu.rank == 2){
							$("#"+parentMenu).attr("class","dropdown");
							$("#"+parentMenu+" a").append('<b class="caret">');
						}else{
							$("#"+parentMenu).attr("class","dropdown dropdown-submenu");
						}
						$("#"+parentMenu+" a").attr("class","dropdown-toggle");
						$("#"+parentMenu+" a").attr("data-toggle","dropdown");
						var s = '<ul id="'+parentMenu+'List" class="dropdown-menu"></ul>';
						$("#"+parentMenu).append(s);
					}
					
					var menuStr = '<li id="menu'+menu.id+'">'
									+'<a href="<%= request.getContextPath()%>'+menu.menuUrl+'">'+menu.menuName+'</a>'
								 +'</li>';
					$("#"+parentMenu+"List").append(menuStr);
				}
			}
		}
		
	</script>
</body>
</html>
