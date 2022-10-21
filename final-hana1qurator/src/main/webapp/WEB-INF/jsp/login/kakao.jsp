<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<button type="button" class="btn btn-primary btn-sm"
		onclick="javascript:defaultSend()">나에게 기본 메시지 보내기</button>
	<div id="Response" class="alert alert-primary" role="alert"
		style="overflow: hidden; word-wrap: break-word;">Response</div> 
		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
Kakao.init('4aea1490dd8227fdc4a4ca1f97ea9da1'); //발급받은 키 중 javascript키를 사용해준다.
function defaultSend() {
    document.getElementById("Response").innerText = "Response";
    Kakao.API.request({
        url: '/v2/api/talk/memo/send',
        data: {
        	template_id:81184
               
        },
        success: function(response) {
            console.log(response);
        },
        fail: function(error) {
			console.log(error)
        },
    });
}

</script>
</body>
</html>