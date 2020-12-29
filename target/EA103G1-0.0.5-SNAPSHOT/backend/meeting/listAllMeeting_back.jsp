<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="com.meeting.model.*"%>
<%@ page import="com.mem.model.*"%>
<%@ page import="com.wel_record.model.*"%>
<%@ page import=" java.text.*,  java.util.*"  %>


<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%

	MeetingService meetingSvc = new MeetingService();
    List<MeetingVO> list = meetingSvc.getAll();
    pageContext.setAttribute("list",list);
%>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 Date current = new Date();
%>


<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>�����|_��x - listAllMeeting_back.jsp</title>
		<!-- favicon -->
		<link rel="icon" href="<%=request.getContextPath()%>/backend/template/img/favicon.png">
</head>
<body id="page-top">
	
		<div id="wrapper">
	
			<%@include file="/backend/bar/backBarSide.jsp"%>
	
			<div id="content-wrapper" class="d-flex flex-column">		
	
				<div id="content">
	
					<!-- Topbar -->
					<%@include file="/backend/bar/backBarTop.jsp"%>
	
					<div class="container-fluid">				
						<!--=====�۩w�q���estart ================================================== -->
			
<%-- �������D --%>
		 <h1 class="h3 mb-2 text-gray-800">�����|_��x</h1>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
	
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<div class="table table-hover">
<table class="table table-bordered text-center"
       id="dataTableNoSearchChange" width="100%" cellspacing="0">
	<thead>
	<tr class="bg-gray-400">
	    
	    <th>���A</th>
	    <th>���ʦW��</th>
	    <th>�|��HID</th>
	    <th>���</th>
		<th>���W����</th>
        <th>�H��</th>
        <th>�d��</th>
	</tr>
	</thead>
	
	<tbody>
	<%@ include file="page1.file" %> 
  <h4 align="right">  <a href='<%=request.getContextPath()%>/backend/meeting/cancel_meeting_search.jsp'>�u�������v</a> �����|</h4>
	
	<c:forEach var="meetingVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		<tr>	  
		<td class="align-middle">	    
<%-- �H�U���ծɶ� --%>
<fmt:formatDate value="<%=current %>" pattern="yyyy-MM-dd" var="now_time" />
<fmt:formatDate value="${meetingVO.mt_start_time}" pattern="yyyy-MM-dd" var="mt_start_time" />
<fmt:formatDate value="${meetingVO.mt_time}" pattern="yyyy-MM-dd" var="mt_time" />
<fmt:formatDate value="${meetingVO.mt_end_time}" pattern="yyyy-MM-dd" var="mt_end_time" />
<c:set var="mt_status" scope="session" value="${meetingVO.mt_status}"/>


<c:choose> 
  <c:when test="${mt_status == 2}">
           <font color=red> ���ʤw����</font>
    </c:when>
    <c:when test="${now_time gt mt_time}">
             ���ʤw����
    </c:when>
   <c:when test="${now_time gt mt_end_time}">
         ���W�I��
    </c:when>
    <c:when test="${mt_start_time gt now_time}">
              �Y�N�}��
    </c:when>
    <c:otherwise>
          �}����W
    </c:otherwise>
</c:choose>   
</td>		
            <td class="align-middle">${meetingVO.mt_id}</td> 
		    <td class="align-middle">${meetingVO.mem_id}</td>	    
	    		         
		    <td class="align-middle"><fmt:formatDate value="${meetingVO.mt_time}" pattern="yyyy-MM-dd" /></td> 
		     
		    <td class="align-middle"><fmt:formatDate value="${meetingVO.mt_start_time}" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate value="${meetingVO.mt_end_time}" pattern="yyyy-MM-dd" /></td>		 

		    <td class="align-middle">${meetingVO.mt_num}</td> 
		
<td class="align-middle">
         <form action="<%=request.getContextPath()%>/frontend/reg_inf/reg_inf.do" " method="post"><!-- action�ȶ�A��api url -->
		 <input type="hidden" name="mt_no" value="${meetingVO.mt_no}" />
		 <input type="submit" value="�d��" />
		 <input type="hidden" name="action" value="getReg_inf_mt_no">
		  </form>
		 </td>
		</tr>
	</c:forEach>
</table>
<div style="text-align:center;">
<%@ include file="page2.file" %>
                          </div>
					</div>								
				</div>
			</div>

<!--===== �۩w�q���eend ================================================== -->
					</div> <!--END OF container-fluid-->
					
				</div> <!--END OF content-->
				
				<%@include file="/backend/bar/footer.jsp"%>
				
			</div><!--END OF content-wrapper -->




</body>
</html>