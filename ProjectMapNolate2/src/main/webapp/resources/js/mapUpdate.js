// DOM(Document Object Model)이 준비 되었다면
$(document).ready(function() {
		
	
	$(document).on("click", ".modifyMap", function() {	
		
		// 현재 수정하기가 클릭된 부모 요소의 이전 형제 요소를 구한다.
		
		var $next = $(this).parent().prev();
		
		
		if($($next.children()[1]).attr("id") == undefined) {
		
			/* 아래와 같이 jQuery의 is() 메서드를 이용해 화면에 보이는
			 * 상태인지 보이지 않는 상태인지를 체크할 수 있다. 그리고 length
			 * 속성으로 지정한 요소가 문서에 존재하는지 여부를 체크할 수 있다.
			 **/
			console.log(".modifyMap click : visible - " 
					+ $("#replyForm").is(":visible")
					+ ", hidden - " + $("#mapForm").is(":hidden")
					+ ", length - " + $("#mapForm").length);
			
			/* 부모 요소의 다음 형제 요소의 첫 번째 자식 요소의 text를 구한다.
			 * <pre> 태그로 감싼 <span> 태그에 표시한 댓글의 내용을 구한다.
			 * text() 메서드는 현재 선택된 요소의 모든 하위 요소에 표시된 텍스트를
			 * 반환하는데 <pre> 태그 안에 하나의 <span>만 존재하기 때문에
			 * 댓글 내용만 읽어 올 수 있다.
			 **/	
			
			var reply = $($next.children()[0]).first().text();			
			var reply_e =$($next.children()[1]).last().text();	
			if($("#mapForm").css("display") == 'block') {
				$("#mapForm").slideUp(300);
			}
			setTimeout(function() {				
				$(".maps_tx").val($.trim(reply));
				$(".mape_tx").val($.trim(reply_e));
				$("#mapForm").appendTo($next)
					.slideDown(300);
			}, 300);
			$("#mapForm").find("form")
				.attr({"id": "mapUpdateForm", "data-no": $(this).attr("data-no") });
			
		}	//if-끝	
		// 앵커 태그의 기본 기능인 링크로 연결되는 것을 취소한다.
		return false;
	});
		
	
	$(document).on("click", ".map_update", function() {	
	
		var no = $("#mapUpdateForm").attr("data-no");
		
		var map_s =$(".maps_tx").val();
		var map_e =$(".mape_tx").val();
		
		$(".noUp").val(no);
		$(".mapsUp").val(map_s);
		$(".mapeUp").val(map_e);
		
		$("#mapUpdateForm").attr("action", "mapUpdateForm");
					$("#mapUpdateForm").attr("method", "post");
					$("#mapUpdateForm").submit();
		
	});
});
