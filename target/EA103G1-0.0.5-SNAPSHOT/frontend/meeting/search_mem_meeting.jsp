<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import=" java.text.*,  java.util.*"  %>
<%@ page import="com.meeting.model.*"%>
<%@ page import="com.mem.model.*"%>
<%@ page import="com.wel_record.model.*"%>
<%
	MeetingVO meetingVO = (MeetingVO) request.getAttribute("meetingVO");

	WelRecordVO welRecordVO = (WelRecordVO) request.getAttribute("welRecordVO");

	MemVO memVO = (MemVO) session.getAttribute("memVO");

	MeetingService meetingSvc = new MeetingService();
    List<MeetingVO> list = meetingSvc.getMem_Meeting(memVO.getMem_id());
    pageContext.setAttribute("list",list);
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
	<title>�����W��</title>
	
	<style>
		.roger-mt{
			margin-bottom:30px;
		}
	</style>
</head>


<title>�u���|�쪺�v�����| - search_mem_meeting.jsp</title>
</head>
<body onload="checkoutAmount();">

<section class="space-top-30">
	<div id="page-content" class="container">
	
	    <div class="row">
	     <!-------------------------------------------------------------------------------- �۩w�q���eSTART------------------------- -->
	        <div class="roger-mt">
	        	<button type="button"  onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/listAllMeeting_front.jsp'" class="btn btn-primary-filled">�����|-����</button>	        	        	        
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/addMeeting.jsp'" class="btn btn-primary-filled">�|�쨣���|</button>
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/search_mem_meeting.jsp'" class="btn btn-lg btn-primary">���|�쪺�����|</button>
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/reg_inf/listAllReg_inf.jsp'" class="btn btn-primary-filled">�ڳ��W�������|</button>
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
	    <th>���W���A</th>
	    <th>���</th>
		<th>�a�I</th>
		<th>���ʦW��</th>
		<th>���W����</th>
		<th>�ثe�H��</th>
        <th>�ק�</th>
        <th>�R��</th>
        <th>�ӽФ���</th>
	</tr>
	<c:forEach var="meetingVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
	
	<tr>
	<td>	    
<%-- �H�U���ծɶ� --%>
<fmt:formatDate value="<%=current %>" pattern="yyyy-MM-dd" var="now_time" />
<fmt:formatDate value="${meetingVO.mt_start_time}" pattern="yyyy-MM-dd" var="mt_start_time" />
<fmt:formatDate value="${meetingVO.mt_time}" pattern="yyyy-MM-dd" var="mt_time" />
<fmt:formatDate value="${meetingVO.mt_end_time}" pattern="yyyy-MM-dd" var="mt_end_time" />
<c:set var="mt_status" scope="session" value="${meetingVO.mt_status}"/>


<c:choose> 
  <c:when test="${mt_status == 2}">
            ���ʤw����
    </c:when>
    <c:when test="${now_time gt mt_time}">
             ���ʤw����
    </c:when>
     <c:when test="${now_time gt mt_end_time}">
    <font color=red>���W�I��</font>
    </c:when>
    <c:when test="${now_time lt mt_start_time}">
              �Y�N�}��
    </c:when>
    <c:otherwise>
          �}����W
    </c:otherwise>
</c:choose>   
</td>	
            <td><fmt:formatDate value="${meetingVO.mt_time}" pattern="yyyy-MM-dd"/></td> 
		    <td>${meetingVO.mt_place}</td>	   
		    <td>${meetingVO.mt_id}</td>
		    <td><fmt:formatDate value="${meetingVO.mt_start_time}" pattern="yyyy-MM-dd"/>~<br><fmt:formatDate value="${meetingVO.mt_end_time}" pattern="yyyy-MM-dd"/></td>		 
			<td>${meetingVO.mt_num}/${meetingVO.max_num}</td>
			<td>
		
<c:choose> 
  <c:when test="${mt_status == 2}">
      X
    </c:when>
    
    <c:when test="${now_time gt mt_time}">
          X
    </c:when>
     <c:when test="${now_time gt mt_end_time}">
    X
    </c:when>
    <c:when test="${mt_start_time gt now_time}">
         <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/frontend/meeting/meeting.do" style="margin-bottom: 0px;">
			     <input class="btn btn-primary btn-pill" type="submit" value="�ק�">
			     <input type="hidden" name="mt_no"  value="${meetingVO.mt_no}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
    </c:when>
    <c:otherwise>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/frontend/meeting/meeting.do" style="margin-bottom: 0px;">
			     <input class="btn btn-primary btn-pill" type="submit" value="�ק�">
			     <input type="hidden" name="mt_no"  value="${meetingVO.mt_no}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			
			   </c:otherwise> 
			    </c:choose>
			</td>
			
			<td>
<c:choose> 
  <c:when test="${mt_status == 2}">
       X
    </c:when>
    <c:when test="${now_time gt mt_time}">
        X 
    </c:when>
     <c:when test="${now_time gt mt_end_time}">
    X
    </c:when>
    <c:when test="${mt_start_time gt now_time}">
         <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/frontend/meeting/meeting.do" style="margin-bottom: 0px;">
			     <input class="btn btn-primary btn-pill" type="submit" value="�R��">
			     <input type="hidden" name="mt_no"  value="${meetingVO.mt_no}">
			     <input type="hidden" name="mt_status"  value="2">	     
			     <input type="hidden" name="action"	value="cancel_meeting"></FORM>
    </c:when>
    <c:otherwise>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/frontend/meeting/meeting.do" style="margin-bottom: 0px;">
			     <input class="btn btn-primary btn-pill" type="submit" value="�R��">
			     <input type="hidden" name="mt_no"  value="${meetingVO.mt_no}">
			     <input type="hidden" name="mt_status"  value="2">
			     <input type="hidden" name="action"	value="cancel_meeting"></FORM>
			
			   </c:otherwise> 
			    </c:choose>
			</td>
			
			
				<td>
<c:choose> 
  <c:when test="${mt_status == 2}">
       X
    </c:when>
      <c:when test="${mt_status == 5}">
       X
    </c:when>
    <c:when test="${now_time gt mt_time}">
        <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/frontend/meeting/meeting.do" style="margin-bottom: 0px;">
			     <input class="btn btn-primary btn-pill" type="submit" value="�ӽ�">
			     <input type="hidden" name="mt_no"  value="${meetingVO.mt_no}">
			     <input type="hidden" name="mt_num" id="mt_num"  value="${meetingVO.mt_num}">	
			     <input type="hidden" name="ri_fee" id="ri_fee"  value="${meetingVO.ri_fee}">	
			     <input type="hidden" name="sharingAmount" id="amount" >
			          
			     <input type="hidden" name="action"	value="sharing_meeting"></FORM>
    </c:when>
     <c:when test="${now_time gt mt_end_time}">
    X
    </c:when>
    <c:when test="${mt_start_time gt now_time}">
        X
    </c:when>
    <c:otherwise>
    X		
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

<script>
function checkoutAmount()
{
/*�p���`����*/
var mt_num=document.getElementById("mt_num").value;

var ri_fee=document.getElementById("ri_fee").value;

document.getElementById("amount").value=mt_num*ri_fee;
}
</script>



</body>
</html>