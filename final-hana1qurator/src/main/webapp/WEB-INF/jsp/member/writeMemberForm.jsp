<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="ie=edge">

<meta name="copyright" content="MACode ID, https://macodeid.com/">

<title>SeoGram - SEO Agency Template</title>

<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="/Mission-92Bank/resources/images2/favicon.png">
<!-- Custom Stylesheet -->
<!-- <link href="../../resources/css2/style.css" rel="stylesheet"> -->
<link href="/Mission-92Bank/resources/css2/style.css" rel="stylesheet">

<script>
	/* 
	 function checkForm(){
	 let f = document.writeMemberForm
	
	 if(f.id.value==''){
	 f.id.focus()
	 alter('아이디를 입력해주세요')
	 return false
	 }
	
	 if(f.name.value==''){
	 f.name.focus()
	 alter('이름를 입력해주세요')
	 return false
	 }
	
	 if(f.password.value==''){
	 f.password.focus()
	 alter('패스워드를 입력해주세요')
	 return false
	 }
	
	 return true
	
	 }
	 */
</script>

</head>
<body></body>


<!--*******************
        Preloader start
    ********************-->
<div id="preloader">
	<div class="loader">
		<svg class="circular" viewBox="25 25 50 50">
                <circle class="path" cx="50" cy="50" r="20" fill="none"
				stroke-width="3" stroke-miterlimit="10" />
            </svg>
	</div>
</div>
<!--*******************
        Preloader end
    ********************-->


<div class="login-form-bg h-100">
	<div class="container h-100">
		<div class="row justify-content-center h-100">
			<div class="col-xl-6">
				<div class="form-input-content">
					<div class="card login-form mb-0">
						<div class="card-body pt-5">

							<a class="text-center" href="/mission-web/index.jsp">
								<h4>HANA 1Qurator</h4>
							</a>

							<form class="mt-5 mb-5 login-input"
								action="${pageContext.request.contextPath}/member/writeMember.do"
								method="post" name="writeMemberForm"
								onsubmit="return checkForm()">
								<div class="form-group">
									<label class="col-form-label"><h4>ID</h4></label> <input type="text"
										class="form-control" name="id" placeholder="아이디를 입력해주세요"
										required>
								</div>

								<div class="form-group">
									<label class="col-form-label"><h4>PASSWORD</h4></label> <input
										type="password" class="form-control" name="password"
										placeholder="비밀번호를 입력해주세요" required>
								</div>
								<div class="form-group">
									<label class="col-form-label"><h4>NAME</h4></label> <input type="text"
										class="form-control" name="name" placeholder="이름을 입력해주세요"
										required>
								</div>
								<div class="form-group">
									<label class="col-form-label"><h4>EMAIL</h4></label> <input type="email"
										class="form-control" name="email" placeholder="이메일을 입력해주세요"
										required>
								</div>
								<div class="form-group">
									<label class="col-form-label"><h4>TELEPHONE</h4></label> <input
										type="text" class="form-control" name="telephone"
										placeholder="휴대폰 번호를 입력해주세요" required>
								</div>
								<div class="form-group">
									<label class="col-form-label"><h4>MEMEBER_TYPE</h4></label>&nbsp;
									<div class=" input-group input-group-sm mb-3">
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="checkbox" name="type"
												value='U'> <label class="form-check-label"
												for="inlineCheckbox1">일반회원</label>
										</div>
										<div class="form-check form-check-inline">
											<input class="form-check-input" type="checkbox" name="type"
												value='S'> <label class="form-check-label"
												for="inlineCheckbox2">관리자</label>
										</div>
									</div>
								</div>


								<div class="form-group">
									<label class="col-form-label"><h4>ADDRESS</h4></label>&nbsp; <input
										type="button" onclick="sample6_execDaumPostcode()"
										class="btn login-form__btn submit btn-xs" value="우편번호 찾기"
										style="float: right;">

									<!--우편번호-->
									<div class="form-group">
										<label style="margin-top: 20px;"><h5>우편번호</h5></label> <input type="text" class="form-control"
											name="post" id="sample6_postcode" placeholder="우편번호">
									</div>
									<!--도로명주소-->
									<div class="form-group">
										<label><h5>도로명주소</h5></label> <input type="text" class="form-control"
											id="sample6_address" name="basic_addr" placeholder="도로명 주소">
									</div>
									<!-- 상세주소 -->
									<div class="form-group">
										<label><h5>상세주소</h5></label> <input type="text" class="form-control"
											id="sample6_detailAddress" name="detail_addr"
											placeholder="상세 주소">
									</div>

									<div class="form-group">
										<input type="text" id="sample6_extraAddress"
											class="form-control input-flat" placeholder="참고 항목">
									</div>
								</div>






								<button type="submit" class="btn login-form__btn submit w-100">회원가입
									하기</button>
							</form>
							<p class="mt-5 login-form__footer">
								Have account <a href="../login/login.jsp" class="text-primary">Sign
									Up </a> now
							</p>

						</div>
					</div>
				</div>
			</div>
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
<script src="/Mission-92Bank//resources/plugins2/common/common.min.js"></script>
<script src="/Mission-92Bank//resources/js2/custom.min.js"></script>
<script src="/Mission-92Bank//resources/js2/settings.js"></script>
<script src="/Mission-92Bank//resources/js2/gleek.js"></script>
<script src="/Mission-92Bank//resources/js2/styleSwitcher.js"></script>

<script
	src="/Mission-92Bank/resources/plugins2/validation/jquery.validate.min.js"></script>
<script
	src="/Mission-92Bank/resources/plugins2/validation/jquery.validate-init.js"></script>


</body>
</html>