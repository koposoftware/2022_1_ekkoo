<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#my_modal {
	display: none;
	width: 300px;
	padding: 20px 60px;
	background-color: #fefefe;
	border: 1px solid #888;
	border-radius: 3px;
}

#my_modal .modal_close_btn {
	position: absolute;
	top: 10px;
	right: 10px;
}
</style>

</head>
<body>
	<div id="my_modal" style="text-align: center;">
		<div>이체가 완료 되었습니다.</div>
		<div>카카오톡으로 이체 발생 알림톡을</div>
		<div>보낼까요?</div>
		<button type="button" class="btn btn-primary btn-sm"
			onclick="javascript:defaultSend()">나에게 기본 메시지 보내기</button>
		<a class="modal_close_btn">닫기</a>
	</div>

	<button id="popup_open_btn">팝업창 띄어 줘염</button>


	<div id="Response" class="alert alert-primary" role="alert"
		style="overflow: hidden; word-wrap: break-word;">Response</div>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
            function modal(id) {
                var zIndex = 9999;
                var modal = document.getElementById(id);

                // 모달 div 뒤에 희끄무레한 레이어
                var bg = document.createElement('div');
                bg.setStyle({
                    position: 'fixed',
                    zIndex: zIndex,
                    left: '0px',
                    top: '0px',
                    width: '100%',
                    height: '100%',
                    overflow: 'auto',
                    // 레이어 색갈은 여기서 바꾸면 됨
                    backgroundColor: 'rgba(189, 196, 104, 0.26)'
                });
                document.body.append(bg);

                // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
                modal.querySelector('.modal_close_btn').addEventListener('click', function() {
                    bg.remove();
                    modal.style.display = 'none';
                });

                modal.setStyle({
                    position: 'fixed',
                    display: 'block',
                    boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

                    // 시꺼먼 레이어 보다 한칸 위에 보이기
                    zIndex: zIndex + 1,

                    // div center 정렬
                    top: '50%',
                    left: '50%',
                    transform: 'translate(-50%, -50%)',
                    msTransform: 'translate(-50%, -50%)',
                    webkitTransform: 'translate(-50%, -50%)'
                });
            }

            // Element 에 style 한번에 오브젝트로 설정하는 함수 추가
            Element.prototype.setStyle = function(styles) {
                for (var k in styles) this.style[k] = styles[k];
                return this;
            };

            document.getElementById('popup_open_btn').addEventListener('click', function() {
                // 모달창 띄우기
                modal('my_modal');
            });
            
            
            
            Kakao.init('4aea1490dd8227fdc4a4ca1f97ea9da1'); //발급받은 키 중 javascript키를 사용해준다.
            function defaultSend() {
                document.getElementById("Response").innerText = "Response";
                Kakao.API.request({
                    url: '/v2/api/talk/memo/send',
                    data: {
                    	template_id: 79793
                           
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