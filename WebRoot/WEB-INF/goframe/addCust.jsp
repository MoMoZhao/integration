<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="../goframe/navbar.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<link rel="stylesheet" href="/acpms/common/bootstrap/css/bootstrap-datetimepicker.min.css">
	<script src="/acpms/common/bootstrap/js/bootstrap-datetimepicker.min.js"></script>

	<title>资产托管_项目管理系统</title>
	
	<style type="text/css">
		.table{
			width:90%;
			vertical-align: middle;
			margin:auto;
			margin-top: 10px;
/* 			margin-left: auto; */
/* 			margin-right: auto; */
/* 			margin-top: 150px; */
/* 			margin-left: 150px; */
			font-size: x-small;
			color: #2F4052;
		}
		.table>tbody>tr>td, 
		.table>tbody>tr>th
/* 		.table>tfoot>tr>td,  */
/* 		.table>tfoot>tr>th,  */
/* 		.table>thead>tr>td,  */
/* 		.table>thead>tr>th { */
		{
			padding: 5px;
			border-top: 1px;
			vertical-align: middle;
		}
		.td_text{
			width: 20%;
		}
		.normal_form_control{
			width:315px;
			height:30px;
			vertical-align: top;
		}
/* 		.big_form_control{ */
/* 			height: 200px; */
/* 		} */
		
		textarea.form-control {
		    height: 100%;
		}
		
		.td_big_input{
			height: 200px;
		}
		.datetimepicker-dropdown-bottom-right{
			left: 980px;
			top: 230px;
		}
		
	</style>

  </head>
  
  <body style="background-color: #263238;">
    <div class="card price price-hosting price-card--500" style="margin: 120px;">
    	<div style="background-color: #F8F8F8;">
    		<form class="form-horizontal" role="form" action="<%=request.getContextPath() %>/cust/newCustomer" id="myForm" method="post">
    				<table class="table">
				  <tbody >
				    <tr>
				      <td class="td_text"><label>客户名称:</label></td>
<!-- 				      data-bv-notempty data-bv-notempty-message="验证码不能为空"  -->
				      <td><input type="text" class="form-control normal_form_control" id="custName" name="name" required></td>
				      <td class="td_text"><label>组织机构代码证号:</label></td>
				      <td><input type="text" class="form-control normal_form_control" id="custNumber" name="organizationCode"></td>
				    </tr>
				    <tr>
				      <td class="td_text"><label>法人代表:</label></td>
				      <td><input type="text" class="form-control normal_form_control" name="legalPerson"></td>
				      <td class="td_text"><label>成立日期:</label></td>
				      <td>
				      
		<!-- 		      	<div class="input-group date"  id="datetimepicker" date-date data-date-format="dd MM yyyy"" > -->
		<!-- 					<input type="text" class="form-control normal_form_control" value readonly> -->
		<!-- 				    <span class="input-group-addon"> -->
		<!-- 				        <span class="glyphicon glyphicon-calendar"></span> -->
		<!-- 				    </span> -->
		<!-- 				</div> -->
						<div id="datetimepicker" class="input-group date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
		                    <input class="form-control" type="text" value="" readonly name="foundDate">
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
		                </div>
		<!-- 				<input type="hidden" id="dtp_input2" value="" /><br/> -->
					  </td>
				    </tr>
				    <tr>
				      <td class="td_text"><label>注册资本(元):</label></td>
				      <td><input type="text" class="form-control normal_form_control" name="registerCapital"></td>
				      <td class="td_text"><label>大写金额:</label></td>
				      <td><input type="text" class="form-control normal_form_control" name="formatCapital"></td>
				    </tr>
				    <tr>
				      <td class="td_text"><label>公司属性:</label></td>
				      <td><input type="text" class="form-control normal_form_control" name="propCode"></td>
				      <td class="td_text"><label>营业执照号:</label></td>
				      <td><input type="text" class="form-control normal_form_control" name="busLicence"></td>
				    </tr>
				    <tr>
				      <td class="td_text"><label>金融许可证号:</label></td>
				      <td><input type="text" class="form-control normal_form_control" name="finLicence"></td>
				      <td class="td_text"><label>批准文号:</label></td>
				      <td><input type="text" class="form-control normal_form_control" name="regNumber"></td>
				    </tr>
				    <tr>
				      <td class="td_text"><label>注册地址:</label></td>
				      <td colspan="3"><input type="text" class="form-control normal_form_control" width="100px" name="address"></td>
				    </tr>
				    <tr>
				      <td class="td_text"><label>股东背景:</label></td>
				      <td class="td_big_input" colspan="3"><textarea class="form-control" name="shareHolder"></textarea></td>
				    </tr>
				    <tr>
				      <td class="td_text"><label>公司背景:</label></td>
				      <td class="td_big_input" colspan="3"><textarea class="form-control" name="comProfile"></textarea></td>
				    </tr>	
				    <tr height="50px;">
				      <td></td>
				      <td colspan="3">
				      	<label>
				      		<input type="checkbox" onclick="commitCustReport();">&nbsp;&nbsp;&nbsp;提交客户尽调报告
				      	</label>
				      </td>
				    </tr>
				    <tr height="50px;">
				    	<td colspan="4" align="center">
				    		<button type="submit" class="btn btn-warning" style="margin-right: 40px;">提交</button>
				    		<button type="button" class="btn btn-danger" onclick="closed">取消</button>
				    		
				    	</td>
				    </tr>	    
				  </tbody>
		    	</table>
    		</form>
    			
    		
    	</div>
    	
    </div>
    <div></div>
    
    <script type="text/javascript">
    	$('.form_date').datetimepicker({
	        language:  'fr',
	        weekStart: 1,
	        todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
	    });

		function temp(){
// 			$('#myForm').serialize()
		}

    </script>
    
  </body>
</html>
