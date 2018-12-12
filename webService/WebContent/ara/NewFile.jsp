<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link href="${pageContext.request.contextPath}/asset/css/sign.css"
	rel="stylesheet">
<!-- source codepen.io -->
<link
	href="https://cdn.jsdelivr.net/foundation/6.2.0/foundation.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div id="my_container">
		<form method="post" autocomplete="off" class="signUp">
			<div class="row signRow">
				<div
					class="wrapper large-5 columns large-centered small-7 small-centered">
					<div class="row header">
						<div class="large-12 columns">SIGN UP</div>
					</div>
					
					<div class="row username">
						<div class="large-9 columns large-centered">
							<label for="username"><i class="fa fa-user"></i></label> <input
								id="username" type="email" name="username"
								placeholder="john@doe.com" required autocomplete="off" />
						</div>
					</div>

					<div class="row password">
						<div class="large-9 columns large-centered">
							<label for="password"><i class="fa fa-lock"></i></label> <input
								id="password" type="password" name="pass" placeholder="password"
								required autocomplete="off" />
						</div>
					</div>
					  
					<div class="row password">
						<div class="large-9 columns large-centered">
							<label for="password"><i class="fa fa-lock"></i></label> <input
								id="password" type="password" name="pass" placeholder="password"
								required autocomplete="off" />
						</div>
					</div>
					
					<div class="row password">
						<div class="large-9 columns large-centered">
							<label for="password"><i class="fa fa-lock"></i></label> <input
								id="password" type="password" name="pass" placeholder="password"
								required autocomplete="off" />
						</div>
					</div>
					   	
					<div class="row password">
						<div class="large-9 columns large-centered">
							<label for="password"><i class="fa fa-lock"></i></label> <input
								id="password" type="password" name="pass" placeholder="password"
								required autocomplete="off" />
						</div>
					</div>
					
					<div class="row password">
						<div class="large-9 columns large-centered">
							<label for="password"><i class="fa fa-lock"></i></label> <input
								id="password" type="password" name="pass" placeholder="password"
								required autocomplete="off" />
						</div>
					</div>
					
					<div class="row password">
						<div class="large-9 columns large-centered">
							<label for="password"><i class="fa fa-lock"></i></label> <input
								id="password" type="password" name="pass" placeholder="password"
								required autocomplete="off" />
						</div>
					</div>
					
					<div class="row password">
						<div class="large-9 columns large-centered">
							<label for="password"><i class="fa fa-lock"></i></label> <input
								id="password" type="password" name="pass" placeholder="password"
								required autocomplete="off" />
						</div>
					</div>

					<div class="row submit">
						<div class="large-9 columns large-centered">
							<input type="submit" value="SUBMIT">
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>

	<!-- sourceURL=pen.js -->
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js'></script>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script
		src='//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e05d3c5f786c66b19939c4500ce446314d1748483e13.js'></script>
	<!-- Custom scripts for this template -->
	<script src="${pageContext.request.contextPath}/asset/js/login.js"></script>
	
	<script type="text/javascript">
    
        // 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
        function checkValue()
        {
            if(!document.userInfo.id.value){
                alert("아이디를 입력하세요.");
                return false;
            }
            
            if(!document.userInfo.password.value){
                alert("비밀번호를 입력하세요.");
                return false;
            }
            
            // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
            if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
                alert("비밀번호를 동일하게 입력하세요.");
                return false;
            }
        }
        
        // 취소 버튼 클릭시 로그인 화면으로 이동
        function goLoginForm() {
            location.href="login.jsp";
        }
    </script>
	
</body>
</html>