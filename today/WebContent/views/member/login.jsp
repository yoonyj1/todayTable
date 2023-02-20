<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String alertMsg = (String)session.getAttribute("alertMsg");

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Noto Sans KR", sans-serif;
        }

        a {
        text-decoration: none;
        color: black;
        }

        li {
        list-style: none;
        }

        .wrap {
        width: 100%;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: rgba(0, 0, 0, 0.1);
        }

        .login {
        width: 30%;
        height: 800px;
        background: white;
        border-radius: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        }

        h2 {
        color: tomato;
        font-size: 2em;
        }

        .login_sns {
        padding: 20px;
        display: flex;
        }

        .login_sns li {
        padding: 0px 15px;
        }

        .login_sns a {
        width: 50px;
        height: 50px;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 10px;
        border-radius: 50px;
        background: white;
        font-size: 20px;
        box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.4), -3px -3px 5px rgba(0, 0, 0, 0.1);
        }

        .login_id {
        margin-top: 20px;
        width: 80%;
        }

        .login_id input {
        width: 100%;
        height: 50px;
        border-radius: 30px;
        margin-top: 10px;
        padding: 0px 20px;
        border: 1px solid lightgray;
        outline: none;
        }

        .login_pw {
        margin-top: 20px;
        width: 80%;
        }

        .login_pw input {
        width: 100%;
        height: 50px;
        border-radius: 30px;
        margin-top: 10px;
        padding: 0px 20px;
        border: 1px solid lightgray;
        outline: none;
        }

        .login_etc {
        padding: 10px;
        width: 80%;
        font-size: 14px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-weight: bold;
        }

        .submit {
        margin-top: 50px;
        width: 80%;
        }
        
        .submit input {
        width: 100%;
        height: 50px;
        border: 0;
        outline: none;
        border-radius: 40px;
        background: linear-gradient(to left, rgb(255, 77, 46), rgb(255, 155, 47));
        color: white;
        font-size: 1.2em;
        letter-spacing: 2px;
        }
    </style>
</head>
<body>
	<%if(alertMsg!=null){ %>
	<script>
		alert("<%=alertMsg%>");
	
	</script>
	<%session.removeAttribute("alertMsg"); %>
	<%} %>
    <div class="wrap">
        <div class="login">
            <img src="../todayTable (1)/img/logo/logo.png" alt="" width="200">
            <a href="<%=request.getContextPath()%>">HOME</a>
            <h2>Log-in</h2>
            <div class="login_sns">
                <li><a href=""><i class="fab fa-instagram"></i></a></li>
                <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
                <li><a href=""><i class="fab fa-twitter"></i></a></li>
            </div>
            <form action="<%=request.getContextPath() %>/login.me">
                <div class="login_id">
                    <h4>LOGIN</h4>
                    <input type="text" name="memId" placeholder="아이디">
                </div>
                <div class="login_pw">
                    <h4>비밀번호</h4>
                    <input type="password" name="memPwd" placeholder="비밀번호">
                </div>
                <div class="submit">
                    <input type="submit" value="로그인">
                </div>    
            </form>
            <div class="login_etc">
                <div class="forgot_id">
                    <a href="">Forgot ID?</a>
                </div>
                <div class="forgot_pw">
                    <a href="">Forgot Password?</a>
                </div>
                <div class="join">
                    <a href="">JOIN!!</a>
                </div>
            </div>

        </div>
    </div>
</body>
</html>