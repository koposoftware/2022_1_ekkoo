<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	하이	
	<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script type="text/javascript">
$(document).ready(function(){ //홈페이지에 들어가면
		$.ajax({
			url : '${pageContext.request.contextPath}/api/access',
			method : 'post',
			 data : {
				companyCode : 'A0101',
				apiKey : 'D3VP7CBKBZ90WW3P72PE'
			},
			success : function(data){
				alert('성공');
				console.log(data);
			},
			error : function(){
				alert('실패')
			},
			
		})
	
})
</script>
	
</body>
</html>