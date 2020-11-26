<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int cntt= 1; %>
<%! int cnttt= 1; %>
<%= cntt= 1 %>
<%= cnttt= 1 %>
<input type="hidden" id="map_cnt" value="${ cnt }"/>
<aside>	
	<div id="map_search">
    				<!-- 밑에서부터 검색찾기 -->
    			<input type="text" class="text_custom" id="fullAddr"
					name="fullAddr" value="서울시 마포구 와우산로29가길 69">
				<button id="btn_select_0">검색</button>
				<br/><!-- 밑에서부터 길찾기 -->
			<div class="ft_area">
				<div class="ft_select_wrap">
					<div class="ft_select">
						<select id="selectLevel">
							<option value="0" selected="selected">교통최적+추천</option>
							<option value="1">교통최적+무료우선</option>
							<option value="2">교통최적+최소시간</option>
							<option value="3">교통최적+초보</option>
							<option value="4">교통최적+고속도로우선</option>
							<option value="10">최단거리+유/무료</option>
							<option value="12">이륜차도로우선</option>
							<option value="19">교통최적+어린이보호구역 회피</option>
						</select> <select id="year">
							<option value="N" selected="selected">교통정보 표출 옵션</option>
							<option value="Y">Y</option>
							<option value="N">N</option>
						</select>
						<button id="btn_select">길 찾 기</button>
					</div>
				</div>
				<div class="map_act_btn_wrap clear_box"></div>
				<div class="clear"></div>
			</div>
			<form id="seForm" name="seForm">
			<div id="roadSearch">
				출 발 : <input name="marker_s" id="marker_s" type="text"> <br/> 
				도 착 : <input name="marker_e" id="marker_e" type="text"> <br/>	
			</div>
			</form>
			<p id="result"></p>
		</div>
		
		<button id="btn_reset">리셋</button>	
		<button id="btn_save" type="submit">저장</button>
		<!-- 길찾기 버튼생성 -->
		<form id="sbSearch" name="sbSearch" action="sbSearchProcess.bbs" method="post">
			<input type="hidden" name="no" id="no">
			<%-- <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"> --%>
		</form>
		<c:if test="${ not empty mList }">
			<c:forEach var="m" items="${ mList }" varStatus="status">	
					
			<tr class="listTr">
				<td class="listTdNo">
					<button type="submit" id="<%= cnttt++ %>bt" value="${ m.no }">
					<%= cntt++ %> 버튼 출발:${ m.map_s } 도착:${ m.map_e } 
					</button>
				</td>			
			</tr>
				
			</c:forEach>
		</c:if>
			<br/>
		<div id="map_wrap" class="map_wrap">
			<div id="map_div"></div>
		</div>
		<div class="map_act_btn_wrap clear_box"></div>	
	
</aside>
	