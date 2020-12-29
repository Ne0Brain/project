<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import=" java.text.*,  java.util.*"  %>
<%@ page import="com.meeting.model.*"%>
<%@ page import="com.mem.model.*"%>
<%@ page import="com.wel_record.model.*"%>





<%
List<MeetingVO> list = (ArrayList<MeetingVO>) session.getAttribute("fuzzy_list");
pageContext.setAttribute("list", list);
%>
<%
	WelRecordVO welRecordVO = (WelRecordVO) request.getAttribute("welRecordVO");

	MemVO memVO = (MemVO) session.getAttribute("memVO");
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
    <title>�Ҧ����u��� - listAllMeeting_front.jsp</title>	
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
	       <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/listAllMeeting_front.jsp'" class="btn btn-lg btn-primary">�����|-����</button>	        
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/addMeeting.jsp'" class="btn btn-primary-filled">�|�쨣���|</button>
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/meeting/search_mem_meeting.jsp'" class="btn btn-primary-filled">���|�쪺�����|</button>
		        <button type="button" onclick="location.href='<%=request.getContextPath()%>/frontend/reg_inf/listAllReg_inf.jsp'" class="btn btn-primary-filled">�ڳ��W�������|</button>
	        </div>
	       	
			<%-- ��椺�eSTART --%>
			<%@ include file="page1.file" %> 
<FORM METHOD="post" action="<%=request.getContextPath()%>/frontend/meeting/meeting.do"  enctype="multipart/form-data"  > 
<b><font color="#c39d6d">����r�d��:</font></b>
<input type="text" name="mt_id">
<input type="hidden" name="action" value="Fuzzy_Search">
<input type="submit" value="�e�X" class="btn btn-primary-filled btn-rounded">  
</FORM>	
			
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
	    <th>���ʦW��</th>
	    <th>���</th>
		<th>�a�I</th>
		<th>���W����</th>
		<th>�ثe�H��</th>
        <th>�d��</th>
        
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
    <font color=red>���ʤw����</font>
    </c:when>
    <c:when test="${now_time gt mt_time}">
     <font color=red> ���ʤw����</font>
    </c:when>
     <c:when test="${now_time gt mt_end_time}">
    <font color=red>���W�I��</font>
    </c:when>
    <c:when test="${mt_start_time gt now_time}">
              �Y�N�}��
    </c:when>
    <c:otherwise>
          �}����W
    </c:otherwise>
</c:choose>   
</td>	 		      
<td>${meetingVO.mt_id}</td>    
		    <td><fmt:formatDate value="${meetingVO.mt_time}" pattern="yyyy-MM-dd" /></td> 
		    <td>${meetingVO.mt_place}</td>	    
		     
		    <td><fmt:formatDate value="${meetingVO.mt_start_time}" pattern="yyyy-MM-dd" />~<fmt:formatDate value="${meetingVO.mt_end_time}" pattern="yyyy-MM-dd" /></td>		 
<td>${meetingVO.mt_num}/${meetingVO.max_num}</td>    


<td>
           <form action="<%=request.getContextPath()%>/frontend/meeting/meeting.do" " method="get"><!-- action�ȶ�A��api url -->
		  	<input type="hidden" name="mt_no" value="${meetingVO.mt_no}" />
			<input type="submit" value="�d��" class="btn btn-primary btn-pill">
			<input type="hidden" name="action" value="getOne_For_Display">
		  </form>
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