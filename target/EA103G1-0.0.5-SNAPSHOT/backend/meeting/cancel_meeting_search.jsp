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
    Integer mt_status = 2; 

	MeetingService meetingSvc = new MeetingService();
    List<MeetingVO> list = meetingSvc.getCancel_Meeting();
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
	  <title>�����������| -cancel_meeting_search.jsp</title>
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
						<h1 class="h3 mb-2 text-gray-800">�����������|</h1>
							  <h4><a href="<%=request.getContextPath()%>/backend/meeting/listAllMeeting_back.jsp">�^����</a></h4>
						
                        <%-- ���~��C --%>
						<c:if test="${not empty errorMsgs}">
							<font style="color: red">�Эץ��H�U���~:</font>
							<ul>
								<c:forEach var="message" items="${errorMsgs}">
									<li style="color: red">${message}</li>
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
       <th>�ݰh�O�H��</th>
       <th>�d��</th>
	</tr>
	</thead>
	
	<tbody>
	<%@ include file="page1.file" %> 
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
   <c:when test="${meetingVO.mt_num ==0}">
             �h�O����
    </c:when>

    <c:otherwise>
          <font color=red>���ʤw�����A�ݰh�O</font>
    </c:otherwise>
</c:choose>   
</td>	
	
<td>${meetingVO.mt_id}</td> 
		    <td>${meetingVO.mem_id}</td>	    
	    		         
		    <td class="align-middle"><fmt:formatDate value="${meetingVO.mt_time}" pattern="yyyy-MM-dd" /></td> 
		     
		    <td class="align-middle"><fmt:formatDate value="${meetingVO.mt_start_time}" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate value="${meetingVO.mt_end_time}" pattern="yyyy-MM-dd" /></td>		 

		   <td class="align-middle">${meetingVO.mt_num}</td> 
		
           <td class="align-middle">
             <form action="<%=request.getContextPath()%>/frontend/reg_inf/reg_inf.do" " method="get"><!-- action�ȶ�A��api url -->
		     <input type="hidden" name="mt_no" value="${meetingVO.mt_no}" />
		     <input type="submit" value="�d��" />
		     <input type="hidden" name="action" value="getReg_inf_mt_no">
		     </form>
		  </td>
		</tr>
	   </c:forEach>
    </tbody>
</table>

<div style="text-align:center;">
<%@ include file="page2.file" %>
                         </div>
					</div>								
				</div>
			</div>
	       <!--===== �۩w�q���eend ================================================== -->
		</div> <!--END OF container-fluid-->
	</div>	
			
		<%@include file="/backend/bar/footer.jsp"%>
</div>
</body>
</html>