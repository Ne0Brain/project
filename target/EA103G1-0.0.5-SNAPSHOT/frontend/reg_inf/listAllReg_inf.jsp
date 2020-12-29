<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import=" java.text.*,  java.util.*"  %>
<%@ page import="com.reg_inf.model.*"%>
<%@ page import="com.meeting.model.*"%>
<%@ page import="com.mem.model.*"%>
<%@ page import="com.wel_record.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>
<%
    MemVO memVO = (MemVO) session.getAttribute("memVO");
    
    Reg_infService reg_infSvc = new Reg_infService();
    List<Reg_infVO> list = reg_infSvc.getMem_Reg_inf(memVO.getMem_id());
    pageContext.setAttribute("list",list);
    
    MeetingService meetingSvc = new MeetingService();
    MeetingVO meetingVO = meetingSvc.getOneMeeting("mt_no");
    pageContext.setAttribute("meetingSvc",meetingSvc);
 
%>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 Date current = new Date();
%>

<!DOCTYPE html>
<html>
<head>
<!-- top bar -->
	<%@include file="/frontend/bar/frontBarTop.jsp"%>
<title>�u�ڳ��W���v�����|-listAllReg_inf.jsp</title>
	
	<style>
		.roger-mt{
			margin-bottom:30px;
		}
	</style>
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
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/reg_inf/listAllReg_inf.jsp'" class="btn btn-lg btn-primary">�ڳ��W�������|</button>
	        </div>
	       	
			<%-- ��椺�eSTART --%>
			<%@ include file="page1.file" %> 

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
		<th>�����|�W��</th>
		<th>���W����</th>
		<th>���</th>
		<th>���W�H��</th>
		<th>���W�Ƶ�</th>
		<th>�ק�</th>	
		<th>����</th>	
	</tr>
	
	<c:forEach var="reg_infVO" items="${list}"   begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">

		<tr>
		    <td>	    
<c:set var="ri_status" scope="session" value="${reg_infVO.ri_status}"/>

<c:choose>
    <c:when test="${ri_status == 1}">
            ���W���\
    </c:when>
    <c:when test="${ri_status == 2}">
          �w�h�O
    </c:when>
 
    <c:otherwise>
           ���W���\
    </c:otherwise>
</c:choose>   
</td>		    
			<td>${reg_infVO.ri_id}</td>
			<td>${meetingSvc.getOneMeeting(reg_infVO.mt_no).mt_id}</td>
			<td><fmt:formatDate value="${meetingSvc.getOneMeeting(reg_infVO.mt_no).mt_start_time}" pattern="yyyy-MM-dd" />~<fmt:formatDate value="${meetingSvc.getOneMeeting(reg_infVO.mt_no).mt_end_time}" pattern="yyyy-MM-dd" /></td>
			<td><fmt:formatDate value="${meetingSvc.getOneMeeting(reg_infVO.mt_no).mt_time}" pattern="yyyy-MM-dd" /></td>
			<td>${reg_infVO.ri_qty}</td>
			<td>${reg_infVO.ri_note}</td>
	
	
	<td>	    
<%-- �H�U���ծɶ� --%>
<fmt:formatDate value="<%=current %>" pattern="yyyy-MM-dd" var="now_time" />
<fmt:formatDate value="${meetingSvc.getOneMeeting(reg_infVO.mt_no).mt_start_time}" pattern="yyyy-MM-dd" var="mt_start_time" />
<fmt:formatDate value="${meetingSvc.getOneMeeting(reg_infVO.mt_no).mt_time}" pattern="yyyy-MM-dd" var="mt_time" />
<fmt:formatDate value="${meetingSvc.getOneMeeting(reg_infVO.mt_no).mt_end_time}" pattern="yyyy-MM-dd" var="mt_end_time" />
<c:set var="ri_status" scope="session" value="${reg_infVO.ri_status}"/>


<c:choose> 
  <c:when test="${ri_status == 2}">
              �w�h��
    </c:when>
    <c:when test="${now_time gt mt_time}">
             ���ʤw����
    </c:when>
     <c:when test="${now_time gt mt_end_time}">
    <font color=red>���W�I��</font>
    </c:when>
    <c:when test="${mt_start_time gt now_time}">
           <font color=blue>   �Y�N�}��</font>
    </c:when>
    <c:otherwise>
        <FORM METHOD="get" ACTION="<%=request.getContextPath()%>/frontend/reg_inf/reg_inf.do" style="margin-bottom: 0px;">
	 	 <input type="hidden" name="ri_id"  value="${reg_infVO.ri_id}">
	 <input class="btn btn-primary btn-pill" type="submit" value="�ק�">
	<input type="hidden" name="action"	value="getOne_For_Update">
	
	</FORM>
    </c:otherwise>
</c:choose>   
</td>	 		      

<td>	    

<c:choose> 
  <c:when test="${ri_status == 2}">
            �w�h��
    </c:when>
    <c:when test="${now_time gt mt_time}">
             ���ʤw����
    </c:when>
     <c:when test="${now_time gt mt_end_time}">
    <font color=red>���W�I��</font>
    </c:when>
    <c:when test="${mt_start_time gt now_time}">
     <font color=blue>�Y�N�}��</font>
    </c:when>
    <c:otherwise>
        <FORM METHOD="get" ACTION="<%=request.getContextPath()%>/frontend/reg_inf/reg_inf.do" style="margin-bottom: 0px;">
	 	 <input type="hidden" name="ri_id"  value="${reg_infVO.ri_id}">
	             <input class="btn btn-primary btn-pill" type="submit" value="����"> 
	             <input type="hidden" name="action"	value="getOne_For_Display">
	</FORM>
    </c:otherwise>
</c:choose>   
</td>	 		   
		</tr>
	</c:forEach>

</table>
<%-- ��椺�eEND --%>

	<div class="row">
	    <div class="roger-mt">
	</div>
		<%@ include file="page2.file" %> 
	        
<!-------------------------------------------------------------------------------- �۩w�q���eEND------------------------- -->

    </div><!-- / row -->
	</div> <!-- end container -->
	</section>

	<!-- footer -->
	<%@include file="/frontend/bar/frontBarFooter.jsp"%>

	<!-- / footer -->
</body>
</html>