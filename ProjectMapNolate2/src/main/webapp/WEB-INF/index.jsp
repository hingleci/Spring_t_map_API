<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<link type="text/css" href="resources/css/global.css" rel="stylesheet" />
<link type="text/css" href="resources/css/board.css" rel="stylesheet" /> 
<link type="text/css" href="resources/css/mapp.css" rel="stylesheet" /> 
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="resources/js/formcheck.js"></script>
<!-- <script type="text/javascript" src="resources/js/member.js"></script> -->
<script src="https://apis.openapi.sk.com/tmap/jsv2?version=1&appKey=l7xx9326574f725f4433b7ee386a0b07c3e3"></script>
<!-- <script type="text/javascript" src="resources/js/map.js"></script> -->
<script type="text/javascript" src="resources/js/mapUpdate.js"></script>
</head>
<body>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> -->
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