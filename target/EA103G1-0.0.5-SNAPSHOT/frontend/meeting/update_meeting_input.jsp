<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.meeting.model.*"%>

<%
	MeetingVO meetingVO = (MeetingVO) request.getAttribute("meetingVO"); //EmpServlet.java (Concroller) �s�Jreq��empVO���� (�]�A�������X��empVO, �]�]�A��J��ƿ��~�ɪ�empVO����)
%>

<!DOCTYPE html>
<html>
<head>
<!-- top bar -->
	<%@include file="/frontend/bar/frontBarTop.jsp"%>
	<title>�����W��</title>
	
	<style>
		.roger-mt{
			margin-bottom:30px;
		}
	</style>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>���u��ƭק� - update_meeting_input.jsp</title>

</head>
<body>
    <section class="space-top-30">
	<div id="page-content" class="container">
	
	<div class="row">
	     <!-------------------------------------------------------------------------------- �۩w�q���eSTART------------------------- -->
	        <div class="roger-mt">
	        	<button type="button"  onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/listAllMeeting_front.jsp'" class="btn btn-primary-filled">�����|-����</button>	        	        	             
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/addMeeting.jsp'" class="btn btn-primary-filled">�|�쨣���|</button>
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/search_mem_meeting.jsp'" class="btn btn-primary-filled">���|�쪺�����|</button>
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/reg_inf/listAllReg_inf.jsp'" class="btn btn-primary-filled">�ڳ��W�������|</button>
	        </div>
	       	
			<%-- ��椺�eSTART --%>

<table id="table-1">
	<tr><td>
		 <h3>�����|��ƭק� - update_meeting_input.jsp</h3>
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

<FORM action="<%=request.getContextPath()%>/frontend/meeting/meeting.do"  method="post" enctype="multipart/form-data">
<table>
    <tr>
		<td>�����|�s��:</td>
		<td><%=meetingVO.getMt_no()%></td>	
	</tr>
	<tr>
		<td>�|��ID:</td>	
		<td><%=meetingVO.getMem_id()%></td>	
	</tr>
	<tr>
		<td>�H�ƤW��:</td>
		<td><%=meetingVO.getMax_num()%></td>		
	</tr>
	<tr>
		<td>�H�ƤU��:</td>		
	    <td><%=meetingVO.getMin_num()%></td>  
	</tr>
    <tr>
		<td>�a�I:<font color=red><b>*</b></font></td>	
		<td><input type="TEXT" name="mt_place" size="45" value="<%=meetingVO.getMt_place()%>" /></td>	 
	</tr>
	<tr>
		<td>���W�O:</td>
		<td><%=meetingVO.getRi_fee()%></td>		
	</tr>
	<tr>
		<td>����²��:<font color=red><b>*</b></font></td>
		<td><input type="TEXT" name="mt_detail" size="45" value="<%=meetingVO.getMt_detail()%>" /></td>	 
	</tr>
	<tr>
		<td>���W�}�l�ɶ�:</td>
		<td><%=meetingVO.getMt_start_time()%></td>	 	
	</tr>
	<tr>
		<td>���W�I��ɶ�:</td>
		<td><%=meetingVO.getMt_end_time()%></td>   	
	</tr>	
	<tr>
		<td>���ʮɶ�:</td>
		<td><%=meetingVO.getMt_time()%></td>		 
	</tr>
	<tr>
		<td>���ʦW��:<font color=red><b>*</b></font></td>
		<td><input type="TEXT" name="mt_id" value="<%=meetingVO.getMt_id()%>" /></td>	 
	</tr>
</table>
<br>

<input type="hidden" name="action" value="update">
<input type="hidden" name="mt_no" value="<%=meetingVO.getMt_no()%>">
<input type="hidden" name="mem_id" value="<%=meetingVO.getMem_id()%>">
<input type="hidden" name="max_num" value="<%=meetingVO.getMax_num()%>">
<input type="hidden" name="min_num" value="<%=meetingVO.getMin_num()%>">	
<input type="hidden" name="ri_fee" value="<%=meetingVO.getRi_fee()%>"> 
<input type="hidden" name="mt_start_time" value="<%=meetingVO.getMt_start_time()%>">	
<input type="hidden" name="mt_end_time" value="<%=meetingVO.getMt_end_time()%>">
<input type="hidden" name="mt_time" value="<%=meetingVO.getMt_time()%>">
<input type="hidden" name="mt_pic" value="<%=meetingVO.getMt_pic()%>">

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

</html>