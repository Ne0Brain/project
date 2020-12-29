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

%>

<html>
<head>
<title>���W��� - listOneReg_inf.jsp</title>

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
	width: 600px;
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

<h4>�����Ƚm�߱ĥ� Script ���g�k����:</h4>
<table id="table-2">
	<tr><td>
		 <h3>�����|��� - ListOneReg_inf.jsp</h3>
		 <h4><a href="/EA103G1/frontend/meeting/listAllMeeting_front.jsp">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
	    <th>���A</th>
		<th>�����|ID</th>
		<th>�|��ID</th>
		<th>�H�ƤW��</th>
		<th>�H�ƤU��</th>
		<th>�a�I</th>
	     
	</tr>
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
            �w����
    </c:when>
    <c:otherwise>
           ���W���\
    </c:otherwise>
</c:choose>   
</td>	
			<td>${reg_infVO.ri_id}</td>
			<td>${reg_infVO.mt_no}</td>
			<td>${reg_infVO.mem_id}</td>
			<td>${reg_infVO.ri_qty}</td>
			<td>${reg_infVO.ri_note}</td>
			
			
	</tr>
	<c:if test="${reg_infVO.ri_status == 2}">			
	    <td><FORM METHOD="post" ACTION="<%=request.getContextPath()%>/frontend/reg_inf/reg_inf.do" style="margin-bottom: 0px;"> 
			     <input type="hidden" name="ri_id"  value="${reg_infVO.ri_id}">
			     <input type="hidden" name="ri_status"  value="2">
			     <input type="hidden" name="action"	value="cancel">
			     <input type="submit" value="�������W">
	 </FORM></td></c:if>
	
	
	
	
</table>

</body>
</html>