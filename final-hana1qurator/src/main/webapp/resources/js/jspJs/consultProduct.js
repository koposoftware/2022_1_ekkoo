		$("#productTableBtn").on("click",function() {
			var offset = $("#productBenefit").offset();
			$('html, body').animate({scrollTop : offset.top},400);
			
			$('#productDiv').hide();
			$('#productDiv').show();
			$('#productBenefit').hide();
			$('#productBenefit').show();
			
			console.log($('#pension').is(":checked"));
			
			
			var items = [];
			$('input:checkbox[type=checkbox]:checked').each(function () {
			    items.push($(this).val());
			});
			
			console.log(items[0])
			console.log(items[1])
			
			var str = "";
			str += '<div class="row">';		
			
			var benefit1='';
			var benefit2='';
			
			//혜택 조합 상품1
			if(items[0] === 'pension') {
				str += '<div class="col-12 col-lg-5" style="text-align:center;">';		
				str += '<div>당신을 위한 연금</div>';		
				str += '<div><h3>${pensionVO.pensionName}</h3></div>';		
				str += '</div>';
				
				var pensionName = '<c:out value="${pensionVO.pensionName}"/>';
				$('#product1Name').text(pensionName);
				
				var income ='<c:out value="${income}"/>'
				
				if(income <= 5500 ){
					 benefit1=66;	
				}
				else if(income > 5500 && income <= 12000){
					 benefit1=52.8;
				}
				else if(income > 12000 ){
					benefit1=39.6;
				}
				
				
				$('#product1Benefit').html('<h1>연간 최대 <span style="color:#ff328b;">'+benefit1+'</span>만원</h1>세금 환급 받기');
				//$('#product1Name').html(${pensionVO.pensionName});
			}
			else if(items[0] === 'marriageSavings' || items[0] === 'houseSavings' || items[0] === 'etcSavings'
			        || items[0] === 'marriageTermDeposit' || items[0] === 'houseTermDeposit' || items[0] === 'etcTermDeposit'		
			) {
				str += '<div class="col-12 col-lg-5" style="text-align:center;">';		
				str += '<div>결혼</div>';		
				str += '<div><h3>${marriageSavingsVO.productName}</h3></div>';		
				str += '</div>';
				
				var productName = '';
				var productInterestRate='';
				var termDepositMoney ='';
				
				if(items[0] === 'marriageSavings'){
					productName = '<c:out value="${marriageSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${marriageSavingsVO.interestRate}"/>'*1;
				} else if(items[0] === 'houseSavings'){
					productName = '<c:out value="${houseSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${houseSavingsVO.interestRate}"/>'*1;
				} else if(items[0] === 'etcSavings'){
					productName = '<c:out value="${etcSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${etcSavingsVO.interestRate}"/>'*1;
				} else if(items[0] === 'marriageTermDeposit'){
					productName = '<c:out value="${marriageTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${marriageTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${marriageVO.marriageExpence}"/>'*1;
				} else if(items[0] === 'houseTermDeposit'){
					productName = '<c:out value="${houseTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${houseTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${houseVO.houseExpence}"/>'*1;
				} else if(items[0] === 'etcTermDeposit'){
					productName = '<c:out value="${etcTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${etcTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${etcVO.etcExpence}"/>'*1;
				}
				
				//월 저축액
				var savingsMonthlyMoney='<c:out value="${spareMoney}"/>'*10000;
				var savingsPeriod = 12*1;
				var savingsTax=15.4*1;
				
				var benefit1='';
				var resultBeforeTax='';
				var taxAmount='';
				var savingsMoney='';
				
				if(items[0] === 'marriageSavings' || items[0] === 'houseSavings' || items[0] === 'etcSavings'){
					resultBeforeTax = savingsMonthlyMoney * (productInterestRate/100) * (Number(savingsPeriod)+1)* (savingsPeriod/2)/12  
					console.log('resultBeforeTax:'+resultBeforeTax);
					taxAmount = resultBeforeTax*(savingsTax/100);
					console.log('taxAmount:'+taxAmount);
					resultBeforeTax = Math.round(resultBeforeTax);
					taxAmount = Math.round(taxAmount);
					benefitWon1 =Math.round((resultBeforeTax-taxAmount));
					benefit1 =Math.round((resultBeforeTax-taxAmount)/10000);
					savingsMoney = savingsMonthlyMoney*12;
					expectedMoney1 = savingsMoney + resultBeforeTax - taxAmount;
					
					expectedMoney1 = expectedMoney1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					savingsMoney = savingsMoney.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					resultBeforeTax = resultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				} else {
					console.log(termDepositMoney);
					console.log(productInterestRate);
					var termDepositResultBeforeTax = termDepositMoney * (productInterestRate/100);
					//이자과세
					taxAmount= termDepositResultBeforeTax * (savingsTax/100);
					benefitWon1 =Math.round((termDepositResultBeforeTax-taxAmount));
					benefit1 =Math.round((termDepositResultBeforeTax-taxAmount)/10000);
					termDepositMoney = termDepositMoney.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					termDepositResultBeforeTax = termDepositResultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				}
					
					benefit1 = benefit1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					benefitWon1 = benefitWon1.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					taxAmount = taxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
					
				$('#product1Name').text(productName);
				$('#product1Benefit').html('<h1>연간 <span style="color:#ff328b;">'+benefit1+'</span>만원</h1>이자 혜택 받기');
				
				
				var str ='';
				str +='<h3 class="text-primary">'+productName+'</h3>';
				str +='<img style="width: 50%; height: 50%;" src="${pageContext.request.contextPath }/resources/img/illurstor/houseSavings.jpg">';
				str += '<h6>금리 <span style="color:#ff328b;">'+productInterestRate+'%</span>로 상품 가입시 <span style="color:#ff328b;">연 약'+ benefit1 +'만원</span>의</h6>'
				str += '<h6>이자 혜택을 받을 수 있습니다.</h6>';
				str += '<p>일반 과세 15.4% 적용 기준<p>'
				str +='<div class="row"><hr class="mt-3">'
				if(items[0] === 'marriageSavings' || items[0] === 'houseSavings' || items[0] === 'etcSavings'){
				str +='<div class="col-12 col-lg-6"><h6>원금 합계</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6>'+savingsMoney+'원</h6></div>'
				str +='<hr><div class="col-12 col-lg-6"><h6>세전 이자</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6>'+resultBeforeTax+'원</h6></div>'
				} else {
					str +='<div class="col-12 col-lg-6"><h6>원금 합계</h6></div>'
					str +='<div class="col-12 col-lg-6"><h6>'+termDepositMoney+'원</h6></div>'
					str +='<hr><div class="col-12 col-lg-6"><h6>세전 이자</h6></div>'
					str +='<div class="col-12 col-lg-6"><h6>'+termDepositResultBeforeTax+'원</h6></div>'
				}
				str +='<hr><div class="col-12 col-lg-6"><h6>이자 과세</h6>(일반과세:15.4%)</div>'
				str +='<div class="col-12 col-lg-6"><h6 class="mt-3">'+taxAmount+'원</h6></div>'
				str +='<hr><div class="col-12 col-lg-6"><h6>예상 세후 수령액</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6>'+expectedMoney1+'원</h6></div>'
				str +='<hr><div class="col-12 col-lg-6"><h6 style="color:#ff328b;">이자 혜택</h6></div>'
				str +='<div class="col-12 col-lg-6"><h6 style="color:#ff328b;">'+benefitWon1+'원</h6></div>'
				str +='</div><hr>'
				<!-- row  -->
		
				 $('#benefitDetail1').append(str);
			} 
	
			else if(items[0] === 'card') {
				str += '<div class="col-12 col-lg-5" style="text-align:center;">';		
				str += '<div>카드</div>';		
				str += '<div>카드</div>';		
				str += '</div>';
			}
							
			str += '<div class="col-12 col-lg-2" style="text-align:center;">';		
			str += "<i class='bx bx-lg bx-plus-medical'></i>"
			str += '</div>';
			
			
			//두번쨰 조합 상품
			if(items[1] === 'pension') {
				str += '<div class="col-12 col-lg-5" style="text-align:center;">';		
				str += '<div>당신을 위한 연금</div>';		
				str += '<div><h3>${pensionVO.pensionName}</h3></div>';		
				str += '</div>';
				
				var pensionName = '<c:out value="${pensionVO.pensionName}"/>';
				$('#product2Name').text(pensionName);
				
				var income ='<c:out value="${income}"/>'
				
				if(income <= 5500 ){
					 benefit2=66;	
				}
				else if(income > 5500 && income <= 12000){
					 benefit2=52.8;
				}
				else if(income > 12000 ){
					benefit2 = 39.6;
				}
				
				
				$('#product2Benefit').html('<h1>연간 최대 <span style="color:#ff328b;">'+benefit2+'</span>만원</h1>세금 환급 받기');
				//$('#product1Name').html(${pensionVO.pensionName});
			}
			else if(items[1] === 'marriageSavings' || items[1] === 'houseSavings' || items[1] === 'etcSavings'
				|| items[1] === 'marriageTermDeposit' || items[1] === 'houseTermDeposit' || items[1] === 'etcTermDeposit'		
			) {
				str += '<div class="col-12 col-lg-5" style="text-align:center;">';		
				str += '<div>결혼</div>';		
				str += '<div><h3>${marriageSavingsVO.productName}</h3></div>';		
				str += '</div>';
				
				var productName = '';
				var productInterestRate='';
				var termDepositMoney ='';
				
				if(items[1] === 'marriageSavings'){
					productName = '<c:out value="${marriageSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${marriageSavingsVO.interestRate}"/>'*1;
				} else if(items[1] === 'houseSavings'){
					productName = '<c:out value="${houseSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${houseSavingsVO.interestRate}"/>'*1;
				} else if(items[1] === 'etcSavings'){
					productName = '<c:out value="${etcSavingsVO.productName}"/>';
					productInterestRate = '<c:out value="${etcSavingsVO.interestRate}"/>'*1;
				} else if(items[1] === 'marriageTermDeposit'){
					productName = '<c:out value="${marriageTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${marriageTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${marriageVO.marriageExpence}"/>'*1;
				} else if(items[1] === 'houseTermDeposit'){
					productName = '<c:out value="${houseTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${houseTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${houseVO.houseExpence}"/>'*1;
				} else if(items[1] === 'etcTermDeposit'){
					productName = '<c:out value="${etcTermDepositVO.productName}"/>';
					productInterestRate = '<c:out value="${etcTermDepositVO.interestRate}"/>'*1;
					termDepositMoney = '<c:out value="${etcVO.etcExpence}"/>'*1;
				}
				
				//월 저축액
		     	var savingsMonthlyMoney='<c:out value="${spareMoney}"/>'*10000;
				var savingsPeriod = 12*1;
				var savingsTax=15.4*1;
				
				var benefit2='';
				
				if(items[1] === 'marriageSavings' || items[1] === 'houseSavings' || items[1] === 'etcSavings'){
					var resultBeforeTax = savingsMonthlyMoney * (productInterestRate/100) * (Number(savingsPeriod)+1)* (savingsPeriod/2)/12  
					console.log('resultBeforeTax:'+resultBeforeTax);
					var taxAmount = resultBeforeTax*(savingsTax/100);
					console.log('taxAmount:'+taxAmount);
					resultBeforeTax = Math.round(resultBeforeTax);
					taxAmount = Math.round(taxAmount);
					benefit2 =Math.round((resultBeforeTax-taxAmount)/10000);
				} else {
					console.log(termDepositMoney);
					console.log(productInterestRate);
					var termDepositResultBeforeTax = termDepositMoney * (productInterestRate/100);
					//이자과세
					var taxAmount= termDepositResultBeforeTax * (savingsTax/100);
					benefit2 =Math.round((termDepositResultBeforeTax-taxAmount)/10000);
				}
				benefit2 = benefit2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				
				$('#product2Name').text(productName);
				$('#product2Benefit').html('<h1>연간 <span style="color:#ff328b;">'+benefit2+'</span>만원</h1>이자 혜택 받기');
			}
			
			else if(items[1] === 'card') {
				str += '<div class="col-12 col-lg-5" style="text-align:center;">';		
				str += '<div>카드</div>';		
				str += '<div>카드</div>';		
				str += '</div>';
			}
				
			var benefit = (benefit1*1)+(benefit2*1);
			$('#totalBenefit').html(benefit+'만원');
			
	   });

		$("#pensionBtn1").on("click", function() {
			$('#productResult1').hide();
			$('#productResult1').show();
		});
		$("#cardBtn1").on("click", function() {
			$('#productResult1').hide();
			$('#productResult1').show();
		});

		$("#depositBtn2").on("click", function() {
			$('#productResult2').hide();
			$('#productResult2').show();
		});
		$("#savingsBtn2").on("click", function() {
			$('#productResult2').hide();
			$('#productResult2').show();
		});
		$("#pensionBtn2").on("click", function() {
			$('#productResult2').hide();
			$('#productResult2').show();
		});
		$("#cardBtn2").on("click", function() {
			$('#productResult2').hide();
			$('#productResult2').show();
		});

		/* 노후 자금 장바구니 버튼 */
		$("#pensionInsertBtn")
				.on(
						"click",
						function() {
							swal('장바구니 추가 완료!');

							$('#productTable > tbody:last').append('<tr><td> <input class="form-check-input" type="checkbox" value="pension" id="pension"></td><td>연금저축형보험</td><td>${pensionVO.pensionName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><button class="btn btn-primary ml-3 mr-3">가입하기</button></td></tr>')
							
						});
		
		
		/* 주택 자금 장바구니 버튼 */
		$("#houseSavingsInsertBtn").on("click",function() {
							var productNo = '<c:out value="${houseSavingsVO.productNo}"/>'
							swal('장바구니 추가 완료!');
							$('#productTable > tbody:last').append('<tr><td> <input class="form-check-input" type="checkbox" value="houseSavings" id="houseSavings"></td><td>적금</td><td>${houseSavingsVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
						});
		/* 주택 예금 장바구니 버튼 */
		$("#houseTermInsertBtn").on("click",function() {
							var productNo = '<c:out value="${houseTermDepositVO.productNo}"/>';
							swal('장바구니 추가 완료!');
							$('#productTable > tbody:last').append('<tr><td> <input class="form-check-input" type="checkbox" value="houseTerm" id="houseTerm"></td><td>예금</td><td>${houseTermDepositVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
						});
		/* 결혼 자금 장바구니 버튼 */
		$("#marriageSavingsInsertBtn").on("click",function() {
							swal('장바구니 추가 완료!');
							var productNo = '<c:out value="${marriageSavingsVO.productNo}"/>';
							console.log(productNo);
							$('#productTable > tbody:last').append('<tr><td><input class="form-check-input" type="checkbox" value="marriageSavings" id="marriageSavings"></td><td>적금</td><td>${marriageSavingsVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
						});
		
		$("#marriageTermInsertBtn").on("click",function() {
							swal('장바구니 추가 완료!');
							var productNo = '<c:out value="${marriageTermDepositVO.productNo}"/>';
							console.log(productNo);
							$('#productTable > tbody:last').append('<tr><td><input class="form-check-input" type="checkbox" value="marriageTermDeposit" id="marriageDeposit"></td><td>예금</td><td>${marriageTermDepositVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
		});
		$("#etcTermInsertBtn").on("click",function() {
							swal('장바구니 추가 완료!');
							var productNo = '<c:out value="${etcTermDepositVO.productNo}"/>';
							console.log(productNo);
							$('#productTable > tbody:last').append('<tr><td><input class="form-check-input" type="checkbox" value="etcTermDeposit" id="etcDeposit"></td><td>예금</td><td>${etcTermDepositVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
		});
		/* 기타 자금 장바구니 버튼 */
		$("#etcSavingsInsertBtn").on("click",function() {
							var productNo = '<c:out value="${etcTermDepositVO.productNo}"/>';
							swal('장바구니 추가 완료!');
							$('#productTable > tbody:last').append('<tr><td> <input class="form-check-input" type="checkbox" value="etcSavings" id="etcSavings"></td><td>적금</td><td>${etcSavingsVO.productName}</td><td><button class="btn btn-primary" style="margin-right:10px;">상세정보</button><a href="${pageContext.request.contextPath}/product/join/'+productNo+'" class="btn btn-primary">가입하기</a></td></tr>')
						});

		function product() {
			$('#productResult').show();

			if ($('#depositBtn1').is(":checked") == true) {
				console.log('선택됨')
			} else
				(console.log('안선택'))

		};
		function houseResult() {
			if ($('#houseResultBtn').is(":checked") == true) {
				$('#houseResult').show();
			} else {
				$('#houseResult').hide();

			}

		};
		
		 function inputNumberFormat(obj) {
		     obj.value = comma(uncomma(obj.value));
		 }

		 function comma(str) {
		     str = String(str);
		     return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
		 }

		 function uncomma(str) {
		     str = String(str);
		     return str.replace(/[^\d]+/g, '');
		 }
		
		$( document ).ready(function() {
			
			
			var savingsMonthlyMoney = '<c:out value="${spareMoney}"/>'*10000;
			var savingsPeriod1 = '<c:out value="${marriageMonthDiff}"/>'*1;
			var savingsPeriod2 = '<c:out value="${houseMonthDiff}"/>'*1;
			var savingsPeriod3 = '<c:out value="${etcMonthDiff}"/>'*1;
			
			var savingsInterestRate1 = '<c:out value="${marriageSavingsVO.interestRate}"/>'*1;
			var savingsInterestRate2 = '<c:out value="${houseSavingsVO.interestRate}"/>'*1;
			var savingsInterestRate3 = '<c:out value="${etcSavingsVO.interestRate}"/>'*1;
			
			var savingsTax = 15.4*1;
			
			//결혼
			//세전
			var resultBeforeTax = savingsMonthlyMoney * (savingsInterestRate1/100) * (Number(savingsPeriod1)+1)* (savingsPeriod1/2)/12  
			//
			var taxAmount = resultBeforeTax*(savingsTax/100);
			
			//원금 합계
			var savingsTotalWithoutTax = savingsMonthlyMoney * savingsPeriod1;
			//세후
			var resultAfterTax = savingsTotalWithoutTax + resultBeforeTax - taxAmount;
			console.log(savingsTotalWithoutTax);
			console.log(resultAfterTax);
			
			resultBeforeTax = Math.round(resultBeforeTax);
			taxAmount = Math.round(taxAmount);
			savingsTotalWithoutTax = Math.round(savingsTotalWithoutTax);
			resultAfterTax = Math.round(resultAfterTax);
			
			resultBeforeTax = resultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount = taxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			savingsTotalWithoutTax = savingsTotalWithoutTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax = resultAfterTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			//세후 수령액
			$("#taxModal").text(resultAfterTax+'원');
			//세후수령액
			$("#resultAfterTaxModal").text(resultAfterTax+'원');
			//세전이자
			$("#savingsTotalBeforeTaxModal").text(resultBeforeTax+'원');
			//원금합계
			$("#savingsTotalWithoutTaxModal").text(savingsTotalWithoutTax+'원');
			
			//이자과세
			$("#taxAmountModal").text('-'+taxAmount+'원');
			
			//집
			//세전
			var resultBeforeTax2 = savingsMonthlyMoney * (savingsInterestRate2/100) * (Number(savingsPeriod2)+1)* (savingsPeriod2/2)/12  
			var taxAmount2 = resultBeforeTax2*(savingsTax/100);
			//원금 합계
			var savingsTotalWithoutTax2 = savingsMonthlyMoney * savingsPeriod2;
			//세후
			var resultAfterTax2 = savingsTotalWithoutTax2+resultBeforeTax2 - taxAmount2;
			
			resultBeforeTax2 = Math.round(resultBeforeTax2);
			taxAmount2 = Math.round(taxAmount2);
			savingsTotalWithoutTax2 = Math.round(savingsTotalWithoutTax2);
			resultAfterTax2 = Math.round(resultAfterTax2);
			
			resultBeforeTax2 = resultBeforeTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount2 = taxAmount2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			savingsTotalWithoutTax2 = savingsTotalWithoutTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax2 = resultAfterTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			//세후 수령액
			$("#taxModal2").text(resultAfterTax2+'원');
			$("#resultAfterTaxModal2").text(resultAfterTax2+'원');
			
			//세전이자
			$("#savingsTotalBeforeTaxModal2").text(resultBeforeTax2+'원');
			//원금합계
			$("#savingsTotalWithoutTaxModal2").text(savingsTotalWithoutTax2+'원');
			
			//이자과세
			$("#taxAmountModal2").text('-'+taxAmount2+'원');
			
			//etc
			//세전
			var resultBeforeTax3 = savingsMonthlyMoney * (savingsInterestRate3/100) * (Number(savingsPeriod3)+1)* (savingsPeriod3/2)/12  
			var taxAmount3 = resultBeforeTax3*(savingsTax/100);
			//원금 합계
			var savingsTotalWithoutTax3 = savingsMonthlyMoney * savingsPeriod3;
			//세후
			var resultAfterTax3 = savingsTotalWithoutTax3+resultBeforeTax3 - taxAmount3;
			
			resultBeforeTax3 = Math.round(resultBeforeTax3);
			taxAmount3 = Math.round(taxAmount3);
			savingsTotalWithoutTa3x = Math.round(savingsTotalWithoutTax3);
			resultAfterTax3 = Math.round(resultAfterTax3);
			
			resultBeforeTax3 = resultBeforeTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount3 = taxAmount3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			savingsTotalWithoutTax3 = savingsTotalWithoutTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax3 = resultAfterTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			//세후 수령액
			$("#taxModal3").text(resultAfterTax3+'원');
			$("#resultAfterTaxModal3").text(resultAfterTax3+'원');
			
			//세전이자
			$("#savingsTotalBeforeTaxModal3").text(resultBeforeTax3+'원');
			//원금합계
			$("#savingsTotalWithoutTaxModal3").text(savingsTotalWithoutTax3+'원');
			
			//이자과세
			$("#taxAmountModal3").text('-'+taxAmount3+'원');
			
			
		});
		$( document ).ready(function() {
			var money1 = '<c:out value="${marriageVO.marriageExpence}"/>'*1;
			var money2 = '<c:out value="${houseVO.houseExpence}"/>'*1;
			var money3 = '<c:out value="${etcVO.etcExpence}"/>'*1;
			
			var termDepositPeriod1 = '<c:out value="${marriageMonthDiff}"/>'*1;
			var termDepositPeriod2 = '<c:out value="${houseMonthDiff}"/>'*1;
			var termDepositPeriod3 = '<c:out value="${etcMonthDiff}"/>'*1;
			
			var termDepositInterestRate1 = '<c:out value="${marriageTermDepositVO.interestRate}"/>'*1;
			var termDepositInterestRate2 = '<c:out value="${houseTermDepositVO.interestRate}"/>'*1;
			var termDepositInterestRate3 = '<c:out value="${etcTermDepositVO.interestRate}"/>'*1;
			
			var termTax = 15.4*1;
			
			//결혼
			//원금 합계
			var termTotalWithoutTax = money1;
			//세전 이자
			var resultBeforeTax = termTotalWithoutTax * (termDepositInterestRate1/100);
			//이자 과세
			var taxAmount = resultBeforeTax*(termTax/100);
			//세후 수령액
			var resultAfterTax = termTotalWithoutTax + resultBeforeTax - taxAmount;
			console.log(termTotalWithoutTax);
			console.log(resultAfterTax);
			
			resultBeforeTax = Math.round(resultBeforeTax);
			taxAmount = Math.round(taxAmount);
			termTotalWithoutTax = Math.round(termTotalWithoutTax);
			resultAfterTax = Math.round(resultAfterTax);
			
			resultBeforeTax = resultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount = taxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			termTotalWithoutTax = termTotalWithoutTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax = resultAfterTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			//세후 수령액
			$("#termTaxModal").text(resultAfterTax+'원');
			//세후수령액
			$("#termResultAfterTaxModal").text(resultAfterTax+'원');
			//세전이자
			$("#termTotalBeforeTaxModal").text(resultBeforeTax+'원');
			//원금합계
			$("#termTotalWithoutTaxModal").text(termTotalWithoutTax+'원');
			
			//이자과세
			$("#termTaxAmountModal").text('-'+taxAmount+'원');
			
			//집
			//원금 합계
			var termTotalWithoutTax2 = money2;
			//세전 이자
			var resultBeforeTax2 = termTotalWithoutTax2 * (termDepositInterestRate2/100);
			//이자 과세
			var taxAmount2 = resultBeforeTax2*(termTax/100);
			//세후 수령액
			var resultAfterTax2 = termTotalWithoutTax2 + resultBeforeTax2 - taxAmount2;

			resultBeforeTax2 = Math.round(resultBeforeTax2);
			taxAmount2 = Math.round(taxAmount2);
			termTotalWithoutTax2 = Math.round(termTotalWithoutTax2);
			resultAfterTax2 = Math.round(resultAfterTax2);
			
			resultBeforeTax2 = resultBeforeTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount2 = taxAmount2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			termTotalWithoutTax2 = termTotalWithoutTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax2 = resultAfterTax2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			
			//세후 수령액
			$("#termTaxModal2").text(resultAfterTax2+'원');
			//세후수령액
			$("#termResultAfterTaxModal2").text(resultAfterTax2+'원');
			//세전이자
			$("#termTotalBeforeTaxModal2").text(resultBeforeTax2+'원');
			//원금합계
			$("#termTotalWithoutTaxModal2").text(termTotalWithoutTax2+'원');
			
			//이자과세
			$("#termTaxAmountModal2").text('-'+taxAmount2+'원');
			
			//etc
			//원금 합계
			var termTotalWithoutTax3 = money3;
			//세전 이자
			var resultBeforeTax3 = termTotalWithoutTax3 * (termDepositInterestRate3/100);
			//이자 과세
			var taxAmount3 = resultBeforeTax3*(termTax/100);
			//세후 수령액
			var resultAfterTax3 = termTotalWithoutTax3 + resultBeforeTax3 - taxAmount3;

			
			resultBeforeTax3 = Math.round(resultBeforeTax3);
			taxAmount3 = Math.round(taxAmount3);
			termTotalWithoutTax3 = Math.round(termTotalWithoutTax3);
			resultAfterTax3 = Math.round(resultAfterTax3);
			
			resultBeforeTax3 = resultBeforeTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			taxAmount3 = taxAmount3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			termTotalWithoutTax3 = termTotalWithoutTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			resultAfterTax3 = resultAfterTax3.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
			
			
			//세후 수령액
			$("#termTaxModal3").text(resultAfterTax3+'원');
			//세후수령액
			$("#termResultAfterTaxModal3").text(resultAfterTax3+'원');
			//세전이자
			$("#termTotalBeforeTaxModal3").text(resultBeforeTax3+'원');
			//원금합계
			$("#termTotalWithoutTaxModal3").text(termTotalWithoutTax3+'원');
			
			//이자과세
			$("#termTaxAmountModal3").text('-'+taxAmount3+'원');
			
		});
				function calculator(){
				var savingsMonthlyMoney = $("#savingsMonthlyMoney").val();
				savingsMonthlyMoney = uncomma(savingsMonthlyMoney)*1;
				
				//console.log(savingsMonthlyMoney);
				
				var savingsPeriod = $("#savingsPeriod").val();
				var savingsInterestRate = $("#savingsInterestRate").val();
				var savingsTax = $("#savingsTax").val();
				
				//세전
				var resultBeforeTax = savingsMonthlyMoney * (savingsInterestRate/100) * (Number(savingsPeriod)+1)* (savingsPeriod/2)/12  
				console.log(resultBeforeTax);
				
				var taxAmount = resultBeforeTax*(savingsTax/100);
				
				
				//원금 합계
				var savingsTotalWithoutTax = savingsMonthlyMoney * savingsPeriod;
				
				//세후
				var resultAfterTax =  savingsTotalWithoutTax + resultBeforeTax - taxAmount;
				
				
				resultBeforeTax = Math.round(resultBeforeTax);
				taxAmount = Math.round(taxAmount);
				savingsTotalWithoutTax = Math.round(savingsTotalWithoutTax);
				resultAfterTax = Math.round(resultAfterTax);
				
				resultBeforeTax = resultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				taxAmount = taxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				savingsTotalWithoutTax = savingsTotalWithoutTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				resultAfterTax = resultAfterTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				//원금합계
				$("#savingsTotalWithoutTax").text(savingsTotalWithoutTax+' 원');
				//세전이자
				$("#savingsTotalBeforeTax").text(resultBeforeTax+' 원');
				//이자과세
				$("#taxAmount").text('-'+taxAmount+' 원');
				//세후 수령액
				$("#resultAfterTax").text(resultAfterTax+' 원');

		};
		
		function calculator2(){
				//원금
				var termDepositMoney = $("#termDepositMoneyInput").val();
				termDepositMoney = uncomma(termDepositMoney)*1;
			
				//기간
				var termDepositPeriod = $("#termDepositPeriodInput").val();
				//금리
				var termDepositInterestRate = $("#termDepositInterestRateInput").val();
				//세금
				var termDepositTax = $("#termDepositTaxInput").val();
				
				//원금 합계 termDepositMoney;
				//세전
				var termDepositResultBeforeTax = termDepositMoney * (termDepositInterestRate/100);
				//이자과세
				var termDepositTaxAmount = termDepositResultBeforeTax * (termDepositTax/100);
				//세후
				var resultAfterTax =  termDepositMoney + termDepositResultBeforeTax - termDepositTaxAmount;
				
				
				termDepositMoney = Math.round(termDepositMoney);
				termDepositResultBeforeTax = Math.round(termDepositResultBeforeTax);
				termDepositTaxAmount = Math.round(termDepositTaxAmount);
				resultAfterTax = Math.round(resultAfterTax);
				
				resultAfterTax = resultAfterTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				termDepositTaxAmount = termDepositTaxAmount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				termDepositResultBeforeTax = termDepositResultBeforeTax.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				termDepositMoney = termDepositMoney.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
				
				//원금합계
				$("#termDepositMoney").text(termDepositMoney+' 원');
				//세전이자
				$("#termDepositResultBeforeTax").text(termDepositResultBeforeTax+' 원');
				//이자과세
				$("#termDepositTaxAmount").text('-'+termDepositTaxAmount+' 원');
				//세후 수령액
				$("#termDepositResultAfterTax").text(resultAfterTax+' 원');

		};