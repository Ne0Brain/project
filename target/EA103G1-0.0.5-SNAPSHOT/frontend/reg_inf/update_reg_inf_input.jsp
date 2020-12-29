<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.reg_inf.model.*"%>

<%
    Reg_infVO reg_infVO = (Reg_infVO) request.getAttribute("reg_infVO"); //EmpServlet.java (Concroller) �s�Jreq��empVO���� (�]�A�������X��empVO, �]�]�A��J��ƿ��~�ɪ�empVO����)
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<!-- top bar -->
	<%@include file="/frontend/bar/frontBarTop.jsp"%>
<title>�����|��ƭק� - update_reg_inf_input.jsp</title>
	
	<style>
		.roger-mt{
			margin-bottom:30px;
		}
	</style>
</head>

<body>
<body>
	<section class="space-top-30">
	<div id="page-content" class="container">
	
	<div class="row">
	     <!-------------------------------------------------------------------------------- �۩w�q���eSTART------------------------- -->
	        <div class="roger-mt">
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/addMeeting.jsp'" class="btn btn-primary-filled">�|�쨣���|</button>
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/search_mem_meeting.jsp'" class="btn btn-primary-filled">���|�쪺�����|</button>
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/reg_inf/listAllReg_inf.jsp'" class="btn btn-primary-filled">�ڳ��W�������|</button>
	        </div>
	       	
			<%-- ��椺�eSTART --%>

<table id="table-1">
	<tr><td>
		 <h3>���W��ק� - update_reg_inf_input.jsp</h3>
		 <h4><a href="<%=request.getContextPath()%>/frontend/meeting/listAllMeeting_front.jsp">�^����</a></h4>
	</td></tr>
</table>

<h3>��ƭק�:</h3>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="reg_inf.do" name="form2">
<table>
    <tr>
		<td>���W��s��:<font color=red><b>*</b></font></td>
		<td><%=reg_infVO.getRi_id()%></td>
	</tr>


	<tr>
		<td>�����|�s��:<font color=red><b>*</b></font></td>	
		<td><%=reg_infVO.getMt_no()%></td>
	</tr>
	
	<tr>
		<td>�|��ID:<font color=red><b>*</b></font></td>
		<td><%=reg_infVO.getMem_id()%></td>
	</tr>

	<tr>
		<td>���W�H��:<font color=red><b>*</b></font></td>		
	    <td><%=reg_infVO.getRi_qty()%></td>
	</tr>
	
    <tr>
		<td>�Ƶ�:<font color=red><b>*</b></font></td>	
		<td><input type="TEXT" name="ri_note" size="45" value="<%=reg_infVO.getRi_note()%>" /></td>	 
	</tr>
	
	

</table>
<br>
<input type="hidden" name="action" value="update">
<input type="hidden" name="ri_id" value="<%=reg_infVO.getRi_id()%>">
<input type="hidden" name="mem_id" size="45" value="<%=reg_infVO.getMem_id()%>" />
<input type="hidden" name="ri_qty" size="45" value="<%=reg_infVO.getRi_qty()%>" />
<input type="hidden" name="mt_no" size="45" value="<%=reg_infVO.getMt_no()%>" />



<input class="btn btn-primary-filled btn-pill" type="submit" value="�e�X�ק�"></FORM>

<%-- ��椺�eEND --%>
		
<!-------------------------------------------------------------------------------- �۩w�q���eEND------------------------- -->

</div><!-- / row -->
	</div> <!-- end container -->
	</section>

	<!-- footer -->
	<%@include file="/frontend/bar/frontBarFooter.jsp"%>

	<!-- / footer -->
</body>



<!-- =========================================�H�U�� datetimepicker �������]�w========================================== -->

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>

<style>
  .xdsoft_datetimepicker .xdsoft_datepicker {
           width:  300px;   /* width:  300px; */
  }
  .xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
           height: 151px;   /* height:  151px; */
  }
</style>


</html>