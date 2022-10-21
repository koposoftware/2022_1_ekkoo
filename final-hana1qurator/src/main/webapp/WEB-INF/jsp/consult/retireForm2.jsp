<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Portal - Bootstrap 5 Admin Dashboard Template For
	Developers</title>

<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description"
	content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
<meta name="author" content="Xiaoying Riley at 3rd Wave Media">
<link rel="shortcut icon" href="favicon.ico">

<!-- FontAwesome JS-->
<script defer
	src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/fontawesome/js/all.min.js"></script>

<!-- App CSS -->
<link id="theme-style" rel="stylesheet"
	href="${ pageContext.request.contextPath }/resources/assets_portal/css/portal.css">


<!-- hana  -->
<!-- Favicon -->
<link
	href="${ pageContext.request.contextPath }/resources/img/favicon.ico"
	rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="${ pageContext.request.contextPath }/resources/lib/animate/animate.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${ pageContext.request.contextPath }/resources/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link
	href="${ pageContext.request.contextPath }/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link
	href="${ pageContext.request.contextPath }/resources/css/style.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function displayForm(select_btn) {
		if (select_btn === "B") {
			$('#aloneForm').hide();
			$('#marryForm').show();
		} else {
			$('#marryForm').hide();
			$('#aloneForm').show();
		}
	}
	
	
	function getHometax(){
		console.log('getAllReply()')
		$.ajax({
			url : '${pageContext.request.contextPath}/hometax/getInfo.json/${loginVO.telephone}'
			,type : 'get'
			,success : function(data){
				 document.querySelector('.bd-example-modal-lg').style.display ='block';
			
			//	$('#replyList').empty(); //추가될때 다 지우고 새로 추가함(무한으로 append되는것을 방지)
				
				//data는 get한후 return 되는 값을 의미
				console.log(typeof data) //string이면 json.parse를 해줘야함 
				//controller에서 return을 void로안해서 근데 나는 object로 날라와서 안해도됨
				
				console.log(data)
				console.log(data.id)
				data.creditCard *= 1;
				data.debitCard *= 1;
				data.cashReceipt *= 1;
				//alert(typeof data.id)
				let livingExpence = Math.ceil((data.creditCard + data.debitCard + data.cashReceipt)/12/10000)
				let expectedLivingExpence = Math.ceil(livingExpence*(0.7));
				$('input[name=livingExpence]').attr('value',livingExpence);
				$('input[name=expectedLivingExpence]').attr('value',expectedLivingExpence);
				
			}, error : function(){
				alert('실패')
				
			}
		})
	};
	
	function getHometax2(){
		$.ajax({
			url : '${pageContext.request.contextPath}/hana1qurator/myAssets.json/${loginVO.id}'
			,type : 'get'
			,success : function(data){
			
			//	$('#replyList').empty(); //추가될때 다 지우고 새로 추가함(무한으로 append되는것을 방지)
				
				//data는 get한후 return 되는 값을 의미
				console.log(typeof data) //string이면 json.parse를 해줘야함 
				//controller에서 return을 void로안해서 근데 나는 object로 날라와서 안해도됨
			    
				console.log(data)
				
				//alert(typeof data.id)
				//let livingExpence = Math.ceil((data.creditCard + data.debitCard + data.cashReceipt)/12/10000)
				//let expectedLivingExpence = Math.ceil(livingExpence*(0.7));
				$('input[name=preparedAmount]').attr('value',data);
				
			}, error : function(){
				alert('실패')
				
			}
		})
	};
	
	
	function partner(){
		var checked = $('#customSwitch1').is(':checked');
		console.log(checked);
		if($('#customSwitch1').is(":checked")==true){
			$('#partner').show();
		} else {
			$('#partner').hide();
			
		}
		
		
		
	};
	
	function child(){
		var checked = $('#customSwitch2').is(':checked');
		console.log(checked);
		if($('#customSwitch1').is(":checked")==true){
			$('#child').show();
		} else {
			$('#child').hide();
			
		}
		
		
		
	};
	
</script>
</head>

<body bgcolor="red">

	<header>
		<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp" />
	</header>

	<!-- Page Header Start -->
	<div class="container-fluid page-header py-5 mb-5">
		<div class="container py-5">
			<h1 class="display-3 text-white mb-3 animated slideInDown">은퇴설계</h1>
			<nav aria-label="breadcrumb animated slideInDown">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
					<li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
					<li class="breadcrumb-item text-white active" aria-current="page">Retire</li>
				</ol>
			</nav>
		</div>
	</div>
	<!-- Page Header End -->



	<div class="app-content pt-3 p-md-3 p-lg-4"
		style="width: 90%; margin: auto;">
		<div class="container-xl">
			<hr class="my-4">
			<!-- 단 시작 -->
			<div class="row g-4 settings-section">

				<div class="col-12 col-md-4">
					<h2 class="section-title">00.</h2>
					<h2 class="section-title">설계 유형을 선택하세요.</h2>
					<div class="section-intro">
						Settings section intro goes here. Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. <a href="help.html">Learn more</a>
					</div>
				</div>
				<div class="col-12 col-md-8">
					<div class="app-card app-card-settings shadow-sm p-4">

						<div class="app-card-body">
							<div class="row wow fadeInUp" data-wow-delay="0.3s">
								<div class="col-12 text-center">
									<ul class="list-inline mb-5" id="portfolio-flters">
										<li class="mx-2 btn" data-filter=".first"
											style="color: white; background: #018c8d; padding: 10px 90px;"
											onclick="displayForm('A')">단독설계</li>
										<li class="mx-2 btn" data-filter=".second"
											onclick="displayForm('B')"
											style="color: white; background: #018c8d; padding: 10px 90px;">부부설계</li>
										<li class="mx-2 btn" data-filter=".third"
											onclick="displayForm('B')"
											style="color: white; background: #018c8d; padding: 10px 90px;">가족설계</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- //app-card-body -->

					</div>
					<!-- //app-card -->
				</div>
			</div>
			<!--//단 끝 -->

			<hr class="my-4">
			<!-- 단독설계  -->

			<form id="aloneForm"
				action="${pageContext.request.contextPath}/retireResult"
				method="post">

				<!-- 단 시작 -->
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h2 class="section-title">01.</h2>
						<h2 class="section-title">고객님의 정보를 입력해주세요.</h2>
						<!-- <div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div> -->
					</div>
					<div class="col-12 col-md-8">
						<div
							class="card bg-light app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 현재
										나이를 입력해주세요.</label> <input type="text" class="form-control" value=""
										name="age" id="setting-input-2" placeholder="예: 45" required>
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 예상
										은퇴 나이를 입력해주세요.</label> <input type="text" class="form-control"
										value="" id="setting-input-2" name="retireAge"
										placeholder="예: 60" required>
								</div>
								<div class="mb-3">
									<label for="setting-input-3" class="form-label">고객님의
										기대수명을 입력해주세요.</label> <input type="text" class="form-control"
										id="setting-input-3" name="expectedAge" placeholder="예: 90">
								</div>


							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
					<div style="padding-top: 30px;"></div>
					<!-- 배우자정보 -->
					<div class="col-12 col-md-12">
						<div>
							<div style="float: left;">
								<h2 class="section-title">■ 자녀의 정보를 입력해주세요.</h2>
							</div>
							<div style="text-align: right;">
								<div class="custom-control custom-switch">
									<div class="form-check form-switch">
										<input class="form-check-input" type="checkbox" role="switch"
											id="customSwitch1" onchange="partner()">
									</div>
									<!-- <input type="checkbox" class="custom-control-input"
								id="customSwitch1" onchange="partner()" value="okay"> -->
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-12 col-md-8" id="partner" style="display: none;">
						<div
							class="card bg-light app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 현재
										나이를 입력해주세요.</label> <input type="text" class="form-control" value=""
										name="age" id="setting-input-2" placeholder="예: 45">
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 예상
										은퇴 나이를 입력해주세요.</label> <input type="text" class="form-control"
										value="" id="setting-input-2" name="retireAge"
										placeholder="예: 60">
								</div>
								<div class="mb-3">
									<label for="setting-input-3" class="form-label">고객님의
										기대수명을 입력해주세요.</label> <input type="text" class="form-control"
										id="setting-input-3" name="expectedAge" placeholder="예: 90">
								</div>


							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
					<div style="padding-top: 50px;"></div>
					<!-- 자녀의 정보를 입력해주세요  -->
					<div class="col-12 col-md-4">
						<h2 class="section-title">■ 배우자의 정보를 입력해주세요.</h2>
						<div class="custom-control custom-switch">
							<input type="checkbox" class="custom-control-input"
								id="customSwitch2" onchange="child()" value="okay"> <label
								class="custom-control-label" for="customSwitch2">Toggle
								this switch element</label>
						</div>

					</div>
					<div class="col-12 col-md-8" id="child" style="display: none;">
						<div
							class="card bg-light app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 현재
										나이를 입력해주세요.</label> <input type="text" class="form-control" value=""
										name="age" id="setting-input-2" placeholder="예: 45">
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 예상
										은퇴 나이를 입력해주세요.</label> <input type="text" class="form-control"
										value="" id="setting-input-2" name="retireAge"
										placeholder="예: 60">
								</div>
								<div class="mb-3">
									<label for="setting-input-3" class="form-label">고객님의
										기대수명을 입력해주세요.</label> <input type="text" class="form-control"
										id="setting-input-3" name="expectedAge" placeholder="예: 90">
								</div>


							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
				</div>
				<!--//단 끝 -->
				<hr class="my-4">

				<!-- 단 시작 -->
				<div class="row g-4 settings-section">

					<div style="text-align: right;">
						<!-- Large modal -->
						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target=".bd-example-modal-lg">은퇴생활비 통계</button>
						<div class="modal fade bd-example-modal-lg" tabindex="-1"
							role="dialog" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Modal title</h5>
										<button type="button" class="close" data-dismiss="modal">
											<span>&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<img style="overflow: hidden;" alt=""
											src="${pageContext.request.contextPath}/resources/img/retire.png">
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
						<!-- 홈텍스  -->

						<button class="btn btn-primary" style="width: 20%;"
							onclick="getHometax()">홈택스랑 연동하기</button>


					</div>
					<div class="col-12 col-md-4">
						<h2 class="section-title">02.</h2>
						<h2 class="section-title">고객님의 월 생활비 정보를 입력해 주세요.</h2>
						<div class="section-intro">-예상되는 은퇴 후 월 생활비를 입력해주세요</div>
						<div class="section-intro">-현 생활비의 70%가 은퇴 후 월 적정생활비입니다.</div>
					</div>
					<div class="col-12 col-md-8">
						<div
							class="card bg-light app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">

								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 현재
										월 생활비를 입력해주세요. (단위 : 만원)</label><input type="text"
										class="form-control" value="" id="setting-input-2"
										name="livingExpence" placeholder="예: 300" required>
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 은퇴
										후 예상 생활비를 입력해주세요.</label> <input type="text" class="form-control"
										id="setting-input-2" value="" name="expectedLivingExpence"
										placeholder="예: 210" required>
								</div>

							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
				</div>
				<!-- //단 끝 -->
				<hr class="my-4">



				<!-- 단 시작 -->
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h2 class="section-title">03.</h2>
						<h2 class="section-title">고객님의 공적연금 정보를 입력해 주세요.</h2>
						<div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div>
					</div>
					<div class="col-12 col-md-8">
						<div
							class="card bg-light app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">

								<div class="mb-3">
									<label for="setting-input-2" class="form-label">국민연금
										종류를 선택하세요</label> <select class="form-select form-select-md"
										name="pensionType">
										<option selected>국민연금 종류를 선택하세요</option>
										<option value="국민연금(직장)">국민연금(직장)</option>
										<option value="국민연금(지역)">국민연금(지역)</option>
										<option value="공무원연금">공무원연금</option>
										<option value="사학연금">사학연금</option>
										<option value="군인연금">군인연금</option>
									</select>
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">국민연금 월
										수령액을 입력해주세요</label> <input type="text" class="form-control"
										id="setting-input-2" name="pensionAmount" placeholder="예: 210"
										required>
								</div>

							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
				</div>
				<!-- //단 끝 -->
				<hr class="my-4">


				<!-- 단 시작-->
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h2 class="section-title">04.</h2>
						<h2 class="section-title">고객님의 예상 저축정보를 입력해주세요.</h2>
						<div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div>
					</div>
					<div class="col-12 col-md-8">
						<div
							class="card bg-light app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">

								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 예상
										저축 기간을 입력해 주세요. (단위 : 년)</label> <input type="text"
										class="form-control" name="savingYear" id="setting-input-2"
										placeholder="예: 8" required>
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 예상
										월 저축 금액을 입력해 주세요. (단위 : 만원)</label> <input type="text"
										class="form-control" name="savingAmount" id="setting-input-2"
										placeholder="예: 100" required>
								</div>

							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
				</div>


				<!-- //단 끝-->

				<hr class="my-4">

				<!-- 단 시작 -->
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-12">
						<div style="padding-bottom: 20px;">
							<div style="float: left;">
								<h2 class="section-title">05. 고객님의 은퇴 준비 자금 정보를 입력해주세요.</h2>
							</div>
							<div style="text-align: right;">
								<button class="btn btn-primary" style="width: 30%;"
									onclick="getHometax()">오픈뱅킹으로 타행 자금 불러오기</button>

							</div>
						</div>

					</div>
					<div class="col-12 col-md-12">
						<div class="table-responsive">
							<table class="table text-center table-border">
								<thead class="table-secondary">
									<tr>
										<th scope="col">하나은행</th>
										<th scope="col">타행</th>
										<th scope="col">기타</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td style="width: 30%">300원</td>
										<td style="width: 30%"><input type="text">원</td>
										<td style="width: 30%"><input type="text">원</td>
									</tr>
								</tbody>
							</table>
						</div>



						<!-- <div
							class="card bg-light app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">

								<div class="mb-3">
									<label for="setting-input-2" class="form-label">은퇴준비자금(단위
										: 만원)</label> <input type="text" class="form-control"
										id="setting-input-2" name="preparedAmount" value=""
										placeholder="예: 300" required>
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">기대수익률을
										입력해주세요</label> <input type="text" class="form-control"
										id="setting-input-2" name="expectedRate" placeholder="예: 210"
										required>
								</div>

							</div>
							//app-card-body

						</div> -->
						<!--//app-card-->
					</div>
				</div>
				<!-- //단 끝 -->
				<div style="text-align: center; padding-top: 30px; margin: auto;">
					<input type="submit" class="btn app-btn-primary" id="aloneBtn"
						style="color: white; background-color: green; width: 500px; margin: auto;" />
				</div>
				<hr class="my-4">
			</form>

			<!-- 부부설계 -->
			<form id="marryForm" style="display: none;">
				<!-- 단 시작 -->
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h2 class="section-title">01.</h2>
						<h2 class="section-title">부부의 정보를 입력해주세요.</h2>
						<div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div>
					</div>
					<div class="col-12 col-md-8">
						<div
							class="card bg-light app-card app-card-settings shadow-sm p-4">

							<div class="app-card-body">


								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 현재
										나이를 입력해주세요.</label> <input type="text" class="form-control"
										id="setting-input-2" placeholder="예: 45" required>
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 예상
										은퇴 연령을 입력해주세요.</label> <input type="text" class="form-control"
										id="setting-input-2" placeholder="예: 60" required>
								</div>
								<div class="mb-3">
									<label for="setting-input-3" class="form-label">고객님의
										기대수명을 입력해주세요.</label> <input type="email" class="form-control"
										id="setting-input-3" placeholder="예: 90">
								</div>


							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
				</div>
				<!--//단 끝 -->
				<hr class="my-4">

				<!-- 단 시작 -->
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h2 class="section-title">02.</h2>
						<h2 class="section-title">고객님의 공적연금 정보를 입력해 주세요.</h2>
						<div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div>
					</div>
					<div class="col-12 col-md-8">
						<div class="app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">

								<div class="mb-3">
									<label for="setting-input-2" class="form-label">국민연금
										종류를 선택하세요</label> <input type="text" class="form-control"
										id="setting-input-2" placeholder="예: 300" required>
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">국민연금 월
										수령액을 입력해주세요</label> <input type="text" class="form-control"
										id="setting-input-2" placeholder="예: 210" required>
								</div>

							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
				</div>
				<!-- //단 끝 -->
				<hr class="my-4">


				<!-- 단 시작 -->
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h2 class="section-title">03.</h2>
						<h2 class="section-title">고객님의 월 생활비 정보를 입력해 주세요.</h2>
						<div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div>
					</div>
					<div class="col-12 col-md-8">
						<div class="app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">

								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 현재
										월 생활비를 입력해주세요. (단위 : 만원)</label> <input type="text"
										class="form-control" id="setting-input-2" placeholder="예: 300"
										required>
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 은퇴
										후 예상 생활비를 입력해주세요.</label> <input type="text" class="form-control"
										id="setting-input-2" placeholder="예: 210" required>
								</div>

							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
				</div>
				<!-- //단 끝 -->
				<hr class="my-4">


				<!-- 단 시작-->
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h2 class="section-title">04.</h2>
						<h2 class="section-title">고객님의 예상 저축정보를 입력해주세요.</h2>
						<div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div>
					</div>
					<div class="col-12 col-md-8">
						<div class="app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">

								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 예상
										저축 기간을 입력해 주세요. (단위 : 년)</label> <input type="text"
										class="form-control" id="setting-input-2" placeholder="예: 8"
										required>
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">고객님의 예상
										월 저축 금액을 입력해 주세요. (단위 : 만원)</label> <input type="text"
										class="form-control" id="setting-input-2" placeholder="예: 100"
										required>
								</div>

							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
				</div>


				<!-- //단 끝-->

				<hr class="my-4">

				<!-- 단 시작 -->
				<div class="row g-4 settings-section">
					<div class="col-12 col-md-4">
						<h2 class="section-title">05.</h2>
						<h2 class="section-title">고객님의 은퇴 준비 자금 정보를 입력해주세요.</h2>
						<div class="section-intro">
							Settings section intro goes here. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. <a href="help.html">Learn more</a>
						</div>
					</div>
					<div class="col-12 col-md-8">
						<div class="app-card app-card-settings shadow-sm p-4">
							<div class="app-card-body">

								<div class="mb-3">
									<label for="setting-input-2" class="form-label">은퇴준비자금(단위
										: 만원)</label> <input type="text" class="form-control"
										id="setting-input-2" placeholder="예: 300" required>
								</div>
								<div class="mb-3">
									<label for="setting-input-2" class="form-label">기대수익률을
										입력해주세요</label> <input type="text" class="form-control"
										id="setting-input-2" placeholder="예: 210" required>
								</div>

							</div>
							<!--//app-card-body-->

						</div>
						<!--//app-card-->
					</div>
					<div style="text-align: center; padding-top: 30px; margin: auto;">
						<button type="submit" class="btn app-btn-primary"
							style="color: white; background-color: green; width: 500px; margin: auto;">간단설계하기</button>
					</div>
					<hr class="my-4">
				</div>
				<!-- //단 끝 -->
			</form>


		</div>
		<!--//container-fluid-->
	</div>
	<!--//app-content-->

	<!-- Javascript -->
	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/popper.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/assets_portal/plugins/bootstrap/js/bootstrap.min.js"></script>

	<!-- Page Specific JS -->
	<script
		src="${ pageContext.request.contextPath }/resources/assets/js/app.js"></script>

	<script
		src="${ pageContext.request.contextPath }/resources/focus/vendor/global/global.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/focus/js/quixnav-init.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/focus/js/custom.min.js"></script>

</body>
</html>

