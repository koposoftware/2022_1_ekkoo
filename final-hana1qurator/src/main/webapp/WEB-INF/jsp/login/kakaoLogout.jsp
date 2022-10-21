<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
Kakao.init("4aea1490dd8227fdc4a4ca1f97ea9da1");
Kakao.isInitialized();
Kakao.Auth.setAccessToken("4aea1490dd8227fdc4a4ca1f97ea9da1");

Kakao.API.request({
  url: '/v2/user/me',
  success: function(response) {
   console.log(response);
   callbackFunction(); // 연결끊기(탈퇴)성공시 서버에서 처리할 함수
  },
  fail: function(error) {
   alert('탈퇴처리가 미완료되었습니다. \n관리자에게 문의하시기 바랍니다.');
   console.log(error);
 }
});

</script>
</body>
</html>