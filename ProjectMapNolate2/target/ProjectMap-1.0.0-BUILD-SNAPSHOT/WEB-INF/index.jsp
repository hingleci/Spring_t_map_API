<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Insert title here</title>
<link type="text/css" href="css/global.css" rel="stylesheet" />
<link type="text/css" href="css/board.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/formcheck.js"></script>
<script type="text/javascript" src="js/member.js"></script>
<script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xx9326574f725f4433b7ee386a0b07c3e3"></script>
<script type="text/javascript" src="js/map.js"></script>
</head>
<body onload="initTmap();">
	<div id="wrap">		
		<%@ include file="template/header.jsp" %>		
		<div class="clear"></div>
		<%@ include file="template/nav.jsp" %>
		<c:if test="${ not empty param.body }">
			<jsp:include page="${ param.body }" />
		</c:if>
		<div class="clear"></div>		
		<%@ include file="template/footer.jsp" %>
	</div>
</body>
</html>