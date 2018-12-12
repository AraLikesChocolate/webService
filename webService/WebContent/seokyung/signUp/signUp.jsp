<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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


</head>
<body>
<form method = "post" action="/signUp/signUp.go" name = "userInfo" onsubmit = "return checkValue()" style="border:1px solid #ccc">

  <div class="container">
    <h1>Join Us!</h1>
    <p> 회원가입을 위해 아래 정보를 입력하여 주십시오.</p>
    <hr>
	
	<label for = "id"><b>아이디</b></label>
	<input type = "text" placeholder = "Enter ID" name = "id" required><br><br>
	
    <label for="psw"><b>비밀번호</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required><br><br>

    <label for="psw-repeat"><b>비밀번호 재입력</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required><br><br>

	<label for ="name"><b>이름</b></label>
	<input type = "text" placeholder= "Enter Name" name = "name" required><br><br>

	<label for="email"><b>이메일</b></label>
    <input type="text" placeholder="Enter Email" name="email" required><br><br>
    
    <label for="gender"><b>성별</b></label>
    <input type="radio"  name="gender" value="남" checked>남
    <input type="radio" name="gender" value="여">여 <br><br>
    
    <label for="birthday"><b>생년월일</b></label>
    <input type="date" name="birthday"><br><br>

    
    <label>
      <input type="checkbox" name="remember" style="margin-bottom:15px"> 내 정보 기억하기 </label>

    <div class="clearfix">
      <button type="button" class="cancelbtn" onclick="goLoginForm()">취소</button>
      <button type="submit" class="signupbtn">회원가입</button>
    </div>
  </div>
</form>
</body>
</html>