<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.reg_inf.model.*"%>
<%@ page import="com.meeting.model.*"%>
<%@ page import="com.mem.model.*"%>
<%@ page import="com.wel_record.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>
<%
    WelRecordVO welRecordVO = (WelRecordVO) request.getAttribute("welRecordVO");
MeetingVO meetingVO = (MeetingVO) request.getAttribute("meetingVO");


    Reg_infService reg_infSvc = new Reg_infService();
    List<Reg_infVO> list = reg_infSvc.getAll();
    pageContext.setAttribute("list",list);
    
   
%>


<html>
<head>
<title>�������W��(�|��) - listAllReg_inf.jsp</title>

<style>
  table#table-2 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-2 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>

<h4>�����m�߱ĥ� EL ���g�k����:</h4>
<table id="table-2">
	<tr><td>
		 <h3>�Ҧ����W��� - listAllReg_inf.jsp</h3>
		 <h4><a href="/EA103G1/frontend/meeting/listAllMeeting_front.jsp">�^����</a></h4>
	</td></tr>
</table>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<table>
	<tr>
		<th>���A</th>
		<th>���W��ID</th>
		<th>�����|ID</th>
		
		<th>���W�H��</th>
		<th>���W�H��</th>
		<th>�ק�</th>
			
	</tr>
		
	<%@ include file="page1.file" %> 
	<c:forEach var="reg_infVO" items="${list}"   begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">

		<tr>
		    <td>	    
<c:set var="ri_status" scope="session" value="${reg_infVO.ri_status}"/>
<c:choose>
    <c:when test="${ri_status == 1}">
            ���W���\
    </c:when>
    <c:when test="${ri_status == 2}">
            �w�����A�ݰh�O
    </c:when>
    <c:when test="${ri_status == 3}">
           �w�h�O
    </c:when>
    <c:otherwise>
           ���W���\
    </c:otherwise>
</c:choose>   
</td>		    
			<td>${reg_infVO.ri_id}</td>
			<td>${reg_infVO.mt_no}</td>
			<td>${reg_infVO.mt_no}</td>
			<td>${reg_infVO.ri_qty}</td>
			<td>${reg_infVO.ri_note}</td>
	<td>
	 <FORM METHOD="get" ACTION="<%=request.getContextPath()%>/frontend/reg_inf/reg_inf.do" style="margin-bottom: 0px;">
	 	 <input type="hidden" name="ri_id"  value="${reg_infVO.ri_id}">
	 <input type="submit" value="�d��">
	<input type="hidden" name="action"	value="getOne_For_Display_back">
	
	</FORM>
    </td>
		

		
		
		
		
		
		
		
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>