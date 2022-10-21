<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>하나원큐레이터 로그인</title>
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login/css/main.css">

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"
	charset="utf-8"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title"
					style="background-image: url(${pageContext.request.contextPath}/resources/img/hanaMenu.jpg);">
					<span class="login100-form-title-1"> SIGN UP </span>
				</div>
				<!-- 아이디 -->
				<form:form class="login100-form validate-form"
					action="${pageContext.request.contextPath }/register.do"
					method="post" modelAttribute="memberVO">
					<div class="wrap-input100 validate-input m-b-26"
						data-validate="Username is required">
						<span class="label-input100">아이디</span>
						<form:input class="input100" type="text" path="id"
							placeholder="아이디를 입력해주세요" />
						<form:errors path="id"></form:errors>
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Password is required">
						<span class="label-input100">패스워드</span>
						<form:input class="input100" type="password" path="password"
							placeholder="패스워드 입력해주세요" />
						<form:errors path="password"></form:errors>
						<span class="focus-input100"></span>
					</div>
					<!-- 이름 -->
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Name is required">
						<span class="label-input100">이름</span>
						<form:input class="input100" type="text" path="name"
							placeholder="이름을 입력해주세요" />
						<form:errors path="name"></form:errors>
						<span class="focus-input100"></span>
					</div>
					<!-- 전화번호 -->
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Telelphone is required">
						<span class="label-input100">전화번호</span>
						<form:input class="input100" type="text" path="telephone"
							placeholder="전화번호를 입력해주세요" />
						<form:errors path="telephone"></form:errors>
						<span class="focus-input100"></span>
					</div>
					<!-- 전화번호 -->
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="Telelphone is required">
						<span class="label-input100">이메일</span>
						<form:input class="input100" type="email" path="email"
							placeholder="이메일를 입력해주세요" />
						<span class="focus-input100"></span>
					</div>
					<!-- 생년월일 -->
					<div class="wrap-input100 validate-input m-b-30"
						data-validate="BirhtDay is required">
						<span class="label-input100">생년월일</span>
						<form:input class="input100" type="date" value="1990-01-01"
							path="birthday" placeholder="생년월일을 입력해주세요" />
						<form:errors path="birthday"></form:errors>
						<span class="focus-input100"></span>
					</div>

					<div class="validate-input m-b-18"
						style="width: 100%; text-align: right;">

						<input type="button" onclick="sample6_execDaumPostcode()"
							class="btn login-form__btn submit btn-xs" value="우편번호 찾기"
							style="float: right; text-align: right; font-size: 15px;">
					</div>

					<!-- 우편번호 -->
					<div class="wrap-input100 validate-input m-b-18"
						data-validate="BirhtDay is required">
						<span class="label-input100">우편번호</span>
						<form:input class="input100" type="text" path="post"
							id="sample6_postcode" placeholder="우편번호을 입력해주세요" />
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18">
						<span class="label-input100">도로명 주소</span>
						<form:input class="input100" type="text" path="basic_addr"
							id="sample6_address" placeholder="도로명주소를 입력해주세요" />
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-30">
						<span class="label-input100">상세주소</span>
						<form:input class="input100" type="text" path="detail_addr"
							id="sample6_detailAddress" placeholder="상세주소를 입력해주세요" />
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-20">
						<input type="text" id="sample6_extraAddress"
							class="input-100" size="10px;" placeholder="(extra address)">
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div
							style="font-size: 10px; width: 100%; float: right; text-align: right;">
							회원이십니까? <a href="${pageContext.request.contextPath }/login.do"
								class="txt1">로그인</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<input type="submit" value="회원가입"
							class="col-md-10 login100-form-btn">
					</div>

				</form:form>
			</div>
		</div>
	</div>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>

	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/animsition/js/animsition.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/select2/select2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/moment.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/daterangepicker/daterangepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/vendor/countdowntime/countdowntime.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/login/js/main.js"></script>

</body>
</html>