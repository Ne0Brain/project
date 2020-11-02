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
<script type="text/javascript">


function checkoutAmount()
{
/*計算總價格*/


var mt_num=document.getElementById("mt_num").value;

var ri_fee=document.getElementById("ri_fee").value;

document.getElementById("amount").value=mt_num*ri_fee;
}
</script>

<meta charset="BIG5">
<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
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
	width: 1600px;
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
<title>Insert title here</title>
</head>
<body onload="checkoutAmount();" bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>「我舉辦的」見面會 - search_mem_meeting.jsp</h3>
		 <h4><a href="/EA103G1/frontend/meeting/listAllMeeting_front.jsp">回首頁</a></h4>
	</td></tr>
</table>
<%-- 錯誤表列 --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">請修正以下錯誤:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<table>
	<tr>
	    <th>報名狀態</th>
	    <th>日期</th>
		<th>地點</th>
		<th>活動名稱</th>
		<th>報名期間</th>
		<th>目前人數</th>
        <th>修改</th>
        <th>刪除</th>
        <th>申請分潤</th>
	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="meetingVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
	
	<tr>
	<td>	    
<%-- 以下測試時間 --%>
<fmt:formatDate value="<%=current %>" pattern="yyyy-MM-dd" var="now_time" />
<fmt:formatDate value="${meetingVO.mt_start_time}" pattern="yyyy-MM-dd" var="mt_start_time" />
<fmt:formatDate value="${meetingVO.mt_time}" pattern="yyyy-MM-dd" var="mt_time" />
<fmt:formatDate value="${meetingVO.mt_end_time}" pattern="yyyy-MM-dd" var="mt_end_time" />
<c:set var="mt_status" scope="session" value="${meetingVO.mt_status}"/>


<c:choose> 
  <c:when test="${mt_status == 2}">
            活動已取消
    </c:when>
    <c:when test="${now_time gt mt_time}">
             活動已結束
    </c:when>
     <c:when test="${now_time gt mt_end_time}">
    <font color=red>報名截止</font>
    </c:when>
    <c:when test="${now_time lt mt_start_time}">
              即將開放
    </c:when>
    <c:otherwise>
          開放報名
    </c:otherwise>
</c:choose>   
</td>	
            <td>${meetingVO.mt_time }</td> 
		    <td>${meetingVO.mt_place}</td>	   
		    <td>${meetingVO.mt_id}</td>
		    <td>${meetingVO.mt_start_time}~${meetingVO.mt_end_time}</td>		 
			<td>${meetingVO.mt_num}</td>
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
			     <input type="submit" value="修改">
			     <input type="hidden" name="mt_no"  value="${meetingVO.mt_no}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
    </c:when>
    <c:otherwise>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/frontend/meeting/meeting.do" style="margin-bottom: 0px;">
			     <input type="submit" value="修改">
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
			     <input type="submit" value="刪除">
			     <input type="hidden" name="mt_no"  value="${meetingVO.mt_no}">
			     <input type="hidden" name="mt_status"  value="2">	     
			     <input type="hidden" name="action"	value="cancel_meeting"></FORM>
    </c:when>
    <c:otherwise>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/frontend/meeting/meeting.do" style="margin-bottom: 0px;">
			     <input type="submit" value="刪除">
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
			     <input type="submit" value="申請">
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




















<%@ include file="page2.file" %>
</body>
</html>