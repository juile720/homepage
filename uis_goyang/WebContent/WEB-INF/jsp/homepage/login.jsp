<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
    <title>homepage</title>
    <style>
        .container {
            margin: 0 auto;
            margin-top: 200px;
            width: 600px;
        }

        h3 {
            text-align: center;
        }

        .input {
            height: 15px;
            margin: 10px;
            padding: 10px;
            letter-spacing: 1px;
            margin-left: 30px;
            
        }
        
        section {
            border: 2px hidden;
            background-color: lightgoldenrodyellow;
            border-radius: 10px;
            width: 250px;
            margin: 10px;
            margin-left: 170px;
            padding: 10px;
            
        }

        .box {
            margin-left: 230px;
        }

        .button {
            margin: 5px;
            padding: 10px;
            display: inline;
            border: 0;
            outline: 0;
            border-radius: 10px;

        }
        
    </style>
</head>

<body>
    <div class="container">
	<form method="post" action="loginAction.do">
        <h3>로그인 화면</h3>
        <section>
            <div>
                <input class="input" type="text" placeholder="ID" name="userID" maxlength="20">
            </div>
            <div>
                <input type="password" class="input" placeholder="password" name="userPassword" maxlength="20">
            </div>
        </section>
        <div class="box">
            <input type="submit" class="button" value="로그인">
            <input type="submit" class="button" value="회원가입">
        </div>
        </form>

    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>

</html> 

