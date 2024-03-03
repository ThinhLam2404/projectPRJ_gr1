<%-- 
    Document   : forgetPassNext
    Created on : Nov 7, 2023, 12:20:28 AM
    Author     : thinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <!--<link rel = "icon" href =  "logo.png" type = "image/x-icon">--> 
        <title>Forget password</title>
        <link rel = "icon" href =  "./img/logo.png" type = "image/x-icon">
        <style>
            .menu a{
                display: block;
                transition: all 0.1s ease;
            }
            .menu a:hover{
                transform: scale(1.2);
                color: black;
            }
            .top h1 {
                background-color: black;
                color: white;
                height: 31px;
                padding-top: 8px;
                text-align: center;
                font-size: 16px;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }


            .logo{
                height: 100%;
            }

            .logo a {
                background-color: black;
                color: white;
                position: absolute;
                left: 50%;
                top: 10%;
                transform: translate(-50%, -50%);
                text-decoration: none;
                width: 200px;
                height: 32px;
                text-align: center;
                padding-top: 3px;
                font-weight: 800;
            }
            .body h2 {
                text-align: center;
                margin: 55px;
                font-size: 14px;
            }

            .container {
                width: 36%;
                margin: 12% 32%;
            }

            .center h2 {
                text-align: center;
                padding: 0 0 30px 0;
                border-bottom: 1px solid silver;
                margin: 50px 0;
            }

            .center form {
                padding: 0 40px;
                box-sizing: border-box;
            }

            form .txt_field {
                position: relative;
                border-bottom: 2px solid #adadad;
                margin: 30px 0;
            }

            .txt_field input {
                width: 100%;
                padding: 0 5px;
                height: 40px;
                font-size: 16px;
                border: none;
                background: none;
                outline: none;
            }

            .txt_field label {
                position: absolute;
                top: 50%;
                left: 5px;
                color: #adadad;
                transform: translateY(-50%);
                font-size: 16px;
                pointer-events: none;
            }

            .txt_field input:focus~label,
            .txt_field input:valid~label {
                top: -5px;
                color: #2691d9;
            }

            .txt_field input:focus~span::before,
            .txt_field input:Valid~span::before {
                width: 100%;
            }

            input[type="Submit"] {
                width: 40%;
                height: 40px;
                border: 1px solid;
                border-radius: 5px;
                font-size: 15px;
                font-weight: 700;
                cursor: pointer;
                margin: 0 30%;
            }

            input[type="Submit"]:hover {
                background: #2a3741;
                color: #e9f4fb;
                transition: .5s;
            }

            .signup_link {
                margin: 30px 0;
                text-align: center;
                font-size: 16px;
                color: #666666;
            }

            .signup_link a {
                text-decoration: none;
                color: rgb(45, 129, 224);
            }
            .back a{
                text-decoration: none;
                margin-left: 50px;
            }
            .error{
                color: red;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <div class="top">
                <h1></h1>
            </div>

            <!-- thanh tiêu đề-->

            <div class="home">
                <div class="col-1">
                    ${logOutBtn}
                </div>
                <div class="col-3">
                    ${email}
                </div>
                <div class="col-4 logo">
                    <a href="home">DOTAI</a>
                </div>
                <div class="col-4 home-menu">
                </div>
            </div>


            <!-- thanh menu -->

        </div>
        <div class="container">
            <div class="center">
                <h2>Forgot Password</h2>
                <form action="forgetPass" method="post" id="fg">
                    <div class="txt_field">
                        <input type="email" name="email" value="${emailReceive}" readonly>
                        <!--                        <span></span>
                                                <label>Email</label>-->

                    </div>
                    <div class="txt_field">
                        
                        <input placeholder="Enter code" type="text" name="code" required true>
                        <!--<span></span>-->
                        <!--<label>Enter code</label>-->
                    </div>


                    <div class="answer">
                        <input class="send" name="submit" type="Submit" value="Next">

                        <p style="color: red">${message}</p>
                        <div class="signup_link">
                            Not a Member ? <a href="signUp.jsp">Signup</a>
                        </div>
                    </div>

                </form>
            </div>
        </div>
        <div class="back"><a href="login.jsp">&leftarrow;Back to shop</a></div>
        <script src="./js/jquery-3.7.0.min.js"></script>
        <script src="./js/jquery.validate.min.js"></script>

        <script>
            $("#fg").validate({
                messages:
                        {
                            "code": {
                                required: "Please enter code"
                            }
                        }

            });
        </script>
    </body>
</html>