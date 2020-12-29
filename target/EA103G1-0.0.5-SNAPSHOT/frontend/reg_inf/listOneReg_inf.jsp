<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.reg_inf.model.*"%>
<%@ page import="com.meeting.model.*"%>
<%@ page import="com.mem.model.*"%>
<%@ page import="com.wel_record.model.*"%>
<%-- �����Ƚm�߱ĥ� Script ���g�k���� --%>

<%
    Reg_infVO reg_infVO = (Reg_infVO) request.getAttribute("reg_infVO"); //EmpServlet.java(Concroller), �s�Jreq��empVO����
%>
<%
	WelRecordVO welRecordVO = (WelRecordVO) request.getAttribute("welRecordVO");

	MemVO memVO = (MemVO) session.getAttribute("memVO");

	MeetingService meetingSvc = new MeetingService();
    MeetingVO meetingVO = meetingSvc.getOneMeeting("mt_no");
    pageContext.setAttribute("meetingSvc",meetingSvc);
	
%>

<!DOCTYPE html>
<html>
<head>
<!-- top bar -->
	<%@include file="/frontend/bar/frontBarTop.jsp"%>
<title>���W��� - listOneReg_inf.jsp</title>	
	<style>
		.roger-mt{
			margin-bottom:30px;
		}
	</style>
</head>

<body onload="checkoutAmount();">
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
		 <h3>���W��T - ListOneReg_inf.jsp</h3>
		 <h4><a href="/EA103G1/frontend/meeting/listAllMeeting_front.jsp">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<td>�����|ID</td>
		<td>
	     <input type="hidden" name="mt_no" value="${reg_infVO.mt_no}">
	         ${reg_infVO.mt_no}
	         </td>
	</tr>

<tr>
		<td>�|��ID</td>
		<td>${reg_infVO.mem_id}</td>
	</tr>

<tr>
		<td>���W�H��</td>
		<td>${reg_infVO.ri_qty}</td>
	</tr>
<tr>
		<td>�Ƶ�</td>
		<td>${reg_infVO.ri_note}</td>
		
	</tr>
           

	<tr>
		<td>�������W</td>
		<td>
	   <FORM METHOD="get" ACTION="<%=request.getContextPath()%>/frontend/reg_inf/reg_inf.do" style="margin-bottom: 0px;">
	 	
	 	  <input type="hidden" name="ri_qty" id="ri_qty" value="${reg_infVO.ri_qty}">
	 	 <input type="hidden" name="ri_fee" id="ri_fee" value="${meetingSvc.getOneMeeting(reg_infVO.mt_no).ri_fee}" >
	 	  <input type="hidden" name="ri_id"  value="${reg_infVO.ri_id}">
			<input type="hidden" name="totalAmount" id="amount2" >
	 	 
	             <input type="hidden" name="action"	value="cancel">
	              <input type="submit" value="�e�X" class="btn btn-primary-filled btn-pill"> 
	</FORM>
	         </td>
	</tr>

	
</table>
<%-- ��椺�eEND --%>
		
<!-------------------------------------------------------------------------------- �۩w�q���eEND------------------------- -->

</div><!-- / row -->
	</div> <!-- end container -->
	</section>

	<!-- footer -->
	<%@include file="/frontend/bar/frontBarFooter.jsp"%>

	<!-- / footer -->

</body>

<script>


function checkoutAmount()
{
/*�p���`����*/

var ri_qty=document.getElementById("ri_qty").value;
var ri_fee=document.getElementById("ri_fee").value;
console.log("======================")
document.getElementById("amount2").value=ri_qty*ri_fee;
}
</script>

</html>