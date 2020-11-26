<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix= "fmt" uri= "http://java.sun.com/jsp/jstl/fmt" %>
<article>
	<table class="listTable">
		<tr><td class="boardTitle" colspan="4"><h2> 지도 길찾기 리스트</h2></td></tr>
		<tr>
			<td colspan="4">
				<form name="searchForm" id="searchForm" action="#">
					<select name="type">
						<option value="title">길찾기번호</option>
						<option value="writer">출발지</option>
						<option value="content">도착지</option>
					</select>
					<input type="text" name="keyword" />
					<input type="submit" value="검색" />
				</form>
			</td>
		</tr>
		<tr>
			<td colspan="4" class="listWrite"><a href="mapSave.bbs">길찾기 등록하기</a></td>
		</tr>
		<tr>
			<th class="listThNo">NO</th>
			<th class="listThNo">예시N</th>
			<th class="listThTitle">출발지</th>
			<th class="listThWriter">도착지</th>
		</tr>	
	
<c:if test="${ not empty mList }">
	<c:forEach var="m" items="${ mList }" varStatus="status">		
		<tr class="listTr">
			<td class="listTdNo">${ m.no  }</td>
			<td class="listTdTitle">
				<a href="mapDetail.bbs?no=${ m.no }">자세히${ m.no }</a></td>
			<td class="listTdWriter">${ m.map_s }</td>
			<td class="listTdWriter">${ m.map_e }</td>			
		</tr>
	</c:forEach>
	</c:if>	
	<%-- 게시 글 리스트가 존재하지 않으면 --%>
	<c:if test="${ empty mList }">
		<tr>
			<td colspan="5" class="listTdSpan">게시 글이 존재하지 않습니다.</td>
		</tr>
	</c:if>
	</table>
</article>