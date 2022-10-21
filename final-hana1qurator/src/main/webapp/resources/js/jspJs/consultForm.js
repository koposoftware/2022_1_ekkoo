
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
	
	function displayForm(select_btn) {
		if (select_btn === "B") {
			$('#aloneForm').hide();
			$('#marryForm').show();
		} else {
			$('#marryForm').hide();
			$('#aloneForm').show();
		}
	}

 	 
	 $(document).ready(function() {
		 $("#assertPercent").on("propertychange change paste input", function() {
			    var assertPercent = $("#assertPercent").val();
			    console.log(assertPercent)
			   	var assertMoney = 10000*assertPercent/100
			    console.log(assertMoney)
			    $("#assertMoneyInput").val(assertMoney)
			   	$('input[name=assertMoneyInput]').attr('value',assertMoney);
			    
			    
			});
		 $("#outcomeInput").on("propertychange change paste input", function() {
			    var income = $("#incomeInout").val();
			    var outcome = $("#outcomeInout").val();
			    
			    income *= 1;
			    outcome *= 1;
			    
			    var ratio = Math.ceil(outcome/income*100);
			    
			    $('#incomeOutcomeRatio').text(ratio+'%');
			    
			});
		
		 $("#marriageMonth").on("propertychange change paste input", function() {
				//현재 날찌
				var now = new Date();
				var strtYear = now.getFullYear();
				var strtMonth = now.getMonth();
				
				var endYear = $("#marriageYear").val();
				var endMonth =  $("#marriageMonth").val();
				
				var month = (endYear - strtYear)* 12 + (endMonth - strtMonth)-1; 
				
				$('input[name=marriageMonthDiff]').attr('value',month);
				
			    
			});
		 
		 $("#houseMonth").on("propertychange change paste input", function() {
				//현재 날찌
				var now = new Date();
				var strtYear = now.getFullYear();
				var strtMonth = now.getMonth();
				
				var endYear = $("#houseYear").val();
				var endMonth =  $("#houseMonth").val();
				
				var month = (endYear - strtYear)* 12 + (endMonth - strtMonth)-1; 
				
				$('input[name=houseMonthDiff]').attr('value',month);
				
			    
			});
			
		 $("#etcMonth").on("propertychange change paste input", function() {
				//현재 날찌
				var now = new Date();
				var strtYear = now.getFullYear();
				var strtMonth = now.getMonth();
				
				var endYear = $("#etcYear").val();
				var endMonth =  $("#etcMonth").val();
				
				var month = (endYear - strtYear)* 12 + (endMonth - strtMonth)-1; 
				
				$('input[name=etcMonthDiff]').attr('value',month);

			});
			
		//배우자 나이 계산
		$("#partnerBirthYear").on('change keydown paste input', function(){
			const today = new Date();
      		const nowYear = today.getFullYear();
      		const birthYear = $('#partnerBirthYear').val();
			const partnerAge = nowYear-birthYear+1;
			
			$('#partnerCurrentAge').text(partnerAge+'세');
		});
	 });
		

		
	
	function marriage(){
		var checked = $('#marriageBtn').is(':checked');
		var yes='yes';
		var no='no';
		
		if($('#marriageBtn').is(":checked")==true){
			$('#marriageForm').show();
			$('input[name=marriageCheckedInput]').attr('value',yes);
		} else {
			$('#marriageForm').hide();
			$('input[name=marriageCheckedInput]').attr('value',no);
		}
		
	};
	function house(){
		var checked = $('#houseBtn').is(':checked');
		var yes='yes';
		var no='no';
		
		if($('#houseBtn').is(":checked")==true){
			$('#houseForm').show();
			$('input[name=houseCheckedInput]').attr('value',yes);
		} else {
			$('#houseForm').hide();
			$('input[name=houseCheckedInput]').attr('value',no);
			
		}
		
	};
	
	function etc(){
		var yes='yes';
		var no='no';
		
		if($('#etcBtn').is(":checked")==true){
			$('#etcForm').show();
			$('input[name=etcCheckedInput]').attr('value',yes);
		} else {
			$('#etcForm').hide();
			$('input[name=etcCheckedInput]').attr('value',no);
			
		}
		
	};
	
	function partner(){
		var checked = $('#customSwitch1').is(':checked');
		console.log(checked);
		if($('#customSwitch1').is(":checked")==true){
			$('#partner').show();
		} else {
			$('#partner').hide();
			
		}
		
		return false;
		
	};
	
	function child(){
		var checked = $('#customSwitch2').is(':checked');
		console.log(checked);
		if($('#customSwitch1').is(":checked")==true){
			$('#child').show();
		} else {
			$('#child').hide();
			
		}
		
		return false;
		
	};
	
	
	


