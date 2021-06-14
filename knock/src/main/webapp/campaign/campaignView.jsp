<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value ="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠페인 상세보기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function () {
		var user_idx = "${user_idx}";
		if(user_idx == ""){
			$("#participate").attr("href","campaign/index.jsp");
		}
	})

</script>
</head>
<body>
<%@ include file="tempinclude.jsp" %>
	<div class="camp1">
	${campaignIng.campaign_idx }번<br>
	캠페인제목: ${campaignIng.title }<br>
	주최자 :${campaignIng.nickname }<br>
	캠페인내용: ${campaignIng.c_content }
	</div>
	<div class="camp2">
	${campaignIng.goal }
	<br>
	${campaignIng.keyword1 }
	${campaignIng.keyword2 }
	${campaignIng.keyword3 }
	
	</div>
	<div class="emblem">
	엠블럼 자리
	</div>
	
	<div class="ingUser">
	참여중인 user<br>
	<c:if test="${empty ing_userList }">
	참가중인 사용자가 없습니다. 
	</c:if> 
	<c:if test="${!empty ing_userList}">
		<c:forEach var="vo" items="${ing_userList}">
		${vo }
		</c:forEach>
		님이 참여중
	</c:if>
	</div>
	<a id="participate" href="${contextPath }/campaign?type=participate&idx=${campaignIng.campaign_idx }">참여하기 (캠페인 후기게시판으로 이동) </a> 

</body>
</html>