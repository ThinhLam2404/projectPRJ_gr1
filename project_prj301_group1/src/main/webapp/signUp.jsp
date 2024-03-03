<%-- 
    Document   : signUp
    Created on : Oct 30, 2023, 7:57:19 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <link rel="stylesheet" href="sign.css">
        <link rel = "icon" href =  "./img/logo.png" type = "image/x-icon">
        <title>Login</title>
        <style>
            .menu a{
                display: block;
                transition: all 0.1s ease;
            }
            .menu a:hover{
                transform: scale(1.2);
                color: black;
            }
            .back a{
                text-decoration: none;
                margin-left: 50px;
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
            
            .menu ul {
                display: flex;
                justify-content: center;
                border-top: 1px solid rgb(150, 147, 147);
                border-bottom: 1px solid rgb(150, 147, 147);
                padding-bottom: 10px;
            }

            .menu ul li {
                padding: 0 60px;
                margin-top: 10px;
                list-style-type: none;
            }
            .VN{
                margin-left: 50px;
                width: 10%;
            }

            .home {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 15px;
                margin-bottom: 15px;
                height: 42px;
                padding: 0px;
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
                width: 97px;
                height: 32px;
                text-align: center;
                padding-top: 3px;
                font-weight: 800;
            }

            .home-menu {
                padding-left: 50px;
            }
            .home-menu img{
                width: 20px;
                margin: 0 10px 0 10px;
            }
            .body h2 {
                text-align: center;
                margin: 55px;
                font-size: 14px;
            }
            .menu ul li a{
                text-decoration: none;
                color: gray;
            }




            .container {
                width: 36%;
                margin: 5% 32%;
            }

            .center h1 {
                text-align: center;
                padding: 0 0 20px 0;
                border-bottom: 1px solid silver;
            }

            .center form {
                padding: 0 40px;
                box-sizing: border-box;
            }

            form .txt_field {
                position: relative;
                border-bottom: 1px solid #adadad;
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

            .pass {
                margin: -5px 0 20px 5px;
                color: #a6a6a6;
                cursor: pointer;
            }

            input[type="Submit"] {
                width: 100%;
                height: 50px;
                border: 1px solid;
                border-radius: 25px;
                font-size: 18px;
                font-weight: 700;
                cursor: pointer;

            }

            input[type="Submit"]:hover {
                background: #2a3741;
                color: #e9f4fb;
                transition: .5s;
            }


            .footer {
                display: flex;
                margin: 20px;
                border-top: 1px solid;
                padding-top: 50px;
                border-color: #7a7979;
            }

            .col-md-8 {
                display: flex;
            }

            .list {
                list-style: none;
            }

            .list_icon {
                display: flex;
                list-style: none;
                margin: 0 30px;
            }

            .list_icon li {
                margin: 10px;
            }

            .ft__title {
                margin-left: 11%;
                margin-bottom: 10%;
            }

            .ft {
                margin-bottom: 10%;
            }
            .ftCon{
                color: #707070;

            }
            .ftCon a{
                text-decoration: none;
                color: #707070;

            }
            .ftCon ul{
                list-style: none;
            }
            .LH a{
                color: #707070;
            }
            .footer_end{
                display: flex;
                background-color: #c0c0c0;
                padding: 15px;
            }
        </style>
    </head>

    <body>
    <body>
        <div class="header">
            <div class="top">
                <h1>RELEASE OFFICIAL DOTAI® CLASSIC NEW PRODUCT LINE 2023</h1>
            </div>

            <!-- thanh tiêu đề-->

            <div class="home">
                <div class="col-4"><img class="VN" src="https://levents.asia/template/assets/images/svg/ic-vn.svg" alt=""></div>
                <div class="col-4 logo">
                    <a href="index.jsp">DOTAI</a>
                </div>
                <div class="col-4 home-menu">
                    <img src="https://levents.asia/template/assets/images/notification.png" alt="bell">
                    <input type="text" placeholder="Search"> <img
                        src="https://levents.asia/template/assets/images/svg/ic-ser.svg" alt="search">
                    <img src="https://levents.asia/template/assets/images/svg/ic-cart.svg" alt="cart">
                    <a href="login.jsp" ${style}> <img  src="https://levents.asia/template/assets/images/svg/ic-user.svg" alt="user"></a><br/>

                </div>
            </div>


            <!-- thanh menu -->
            <div class="menu">
                <ul>
                    <li><a href="page?pageId=aboutUs&&email=${email}">About Us</a></li>
                    <li><a href="productList?email=${email}">Products</a></li>
                    <li><a href="page?pageId=aboutUs&&email=${email}">Sale</a></li>
                    <li><a href="page?pageId=contact&&email=${email}">Contact</a></li>
                    <li><a href="page?pageId=customer&&email=${email}">Customer Service</a></li>
                    <li><a href="page?pageId=recruitment&&email=${email}">Recruitment</a></li>
                </ul>
            </div>
        </div>
        <div class="container">
            <div class="center">
                <h1>Create Account</h1>
                <form action="signUp" method="POST" id="signUp">
                    <div class="txt_field">
                        <input type="email" name="email" required>
                        <span></span>
                        <label>Email</label>
                    </div>
                    <div class="txt_field">
                        <input type="text" name="username" required>
                        <span></span>
                        <label>Username</label>
                    </div>
                    <div class="txt_field">
                        <input type="password" name="password" required>
                        <span></span>
                        <label>Password</label>
                    </div>
                    <input name="submit" type="Submit" value="Sign Up">

                </form>
                <!--<a href="login.jsp"><input name="submit" type="Submit" value="Back"></a>-->
                ${message}
            </div>

        </div>
        <!--<div class="back"><a href="login.jsp">&leftarrow;Back to shop</a></div>-->

        <!-- <div class="ft__lim"> -->
        <div class="footer">
            <div class="col-md-4">
                <div class="ft"><h5><b>VỀ CHÚNG TÔI</b></h5></div>
                <div class="ftCon">
                    <p class="p1">Dotai® – Share your color with the world</p>
                    <div class="ft__txt">
                        <p class="p1">HỘ KINH DOANH Red Label</p>
                        <p class="p1">GPKD được cấp bởi Cục Cảnh sát QLHC &amp; TTXH</p>
                        <p>Trụ sở hộ kinh doanh: 600 Nguyễn Văn Cừu, Phường An Bình, Quận Ninh Kiều, Tp. Cần Thơ</p>
                        <p>Mä só thuê: 4S5T6K7D8N9T</p>
                        <p class="p1">Ngày cấp: 01/01/2023</p>
                        <p>Người đại diện: Chưa biết</p>
                        <p class="p1">Mã Số thuế cá nhân: 0123456789-999</p>
                    </div>
                </div>
            </div>
            <!-- </div> -->

            <div class="col-md-8">
                <div class="col-4">
                    <div class="ft__title"><h5><b>LIÊN HỆ</b></h5></div>
                    <!-- <div class="ftCon"> -->
                    <div class="LH">
                        <ul class="list">

                            <li>
                                Hotline
                                <br>
                                <a href="tel:1900888888" class="hov-df f-bold">1900 888 888</a>
                            </li>
                            <li>
                                Email
                                <br>
                                <a href="mailto:Customercare@levents.asia"
                                   class="hov-df f-bold">Customercare@dotai.asia</a>
                            </li>
                            <li>
                                Thứ Hai - Chủ nhật
                                <br>
                                <div class="f-bold">09:30 ~ 21:30</div>
                            </li>

                            <li>
                                Email liên hệ công việc
                                <br>
                                <a href="mailto:business@dotai.asia" class="hov-df f-bold">business@dotai.asia</a>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- </div> -->
                <div class="col-4">
                    <div>
                        <div class="ft__title"><h5><b>HỖ TRỢ</b></h5></div>
                        <div>
                            <div class="menu-menu-support-container ftCon">
                                <ul id="menu-menu-support" class="ftCon">
                                    <li id="menu-item-592485">
                                        <a href="https://levents.asia/customer-care/li-ven-fabric/">ĐÔ TAI FABRIC</a>
                                    </li>
                                    <li id="menu-item-4455">
                                        <a href="https://levents.asia/my-account/">Tài khoản</a>
                                    </li>
                                    <li id="menu-item-592376">
                                        <a href="https://levents.asia/chinh-sach-van-chuyen/">Chính sách vận chuyển</a>
                                    </li>
                                    <li id="menu-item-592377">
                                        <a href="https://levents.asia/thanh-toan-online/">Thanh toán trực tuyến</a></li>
                                    <li id="menu-item-808091">
                                        <a href="https://levents.asia/customer-care/chinh-sach-bao-mat/">Chính sách bảo
                                            mật</a>
                                    </li>
                                    <li id="menu-item-592379">
                                        <a
                                            href="https://levents.asia/customer-care/storage-instructions-copy-copy-copy/">Chính
                                            sách bảo hành</a></li>
                                    <li id="menu-item-592380">
                                        <a href="https://levents.asia/quy-trinh-giai-quyet-khieu-nai-khach-hang/">Chính
                                            sách
                                            khiếu nại</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div>
                        <div class="ft"><h5><b>CỬA HÀNG</b></h5></div>
                    </div>
                    <div class="ftCon">
                        <div>
                            <p><a rel="noreferrer noopener" href="https://levents.asia/store/levents-nguyen-trai/"
                                  data-type="URL" data-id="https://levents.asia/store/levents-nguyen-trai/"
                                  target="_blank">100 3/2,
                                    Phường Hưng Lợi, Quận Ninh Kiều, CTho </a></p>
                        </div>
                        <div>
                            <p><a rel="noreferrer noopener" href="https://levents.asia/store/levents-su-van-hanh/"
                                  data-type="URL" data-id="https://levents.asia/store/levents-su-van-hanh/"
                                  target="_blank">456 Hai Bà Trưng,
                                    Phường 6, Sóc Trăng</a></p>
                        </div>
                        <div>
                            <p><a href="https://levents.asia/store/levents-tnp-le-lai/" data-type="URL"
                                  data-id="https://levents.asia/store/levents-tnp-le-lai/" target="_blank"
                                  rel="noreferrer noopener">Lầu 2 Lankmark 81,  Quận Bình Thạnh, HCM</a></p>
                        </div>
                        <div>
                            <p><a href="https://levents.asia/store/levents-can-tho/" data-type="URL"
                                  data-id="https://levents.asia/store/levents-can-tho/" target="_blank"
                                  rel="noreferrer noopener">100, Mậu Thân, Phường Xuân Khánh, Quận Ninh Kiều, Cần Thơ</a>
                            </p>
                        </div>
                    </div>


                    <ul class="list_icon">
                        <li>
                            <a href="https://www.facebook.com/Leventsbrand">
                                <img src="https://levents.asia/template/assets/images/svg/ic-fb.svg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="https://instagram.com/levents.official?igshid=YmMyMTA2M2Y=">
                                <img src="https://levents.asia/template/assets/images/svg/ic-ins.svg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="https://vt.tiktok.com/ZSdBbf2fb/">
                                <img src="https://levents.asia/template/assets/images/svg/ic-tt.svg" alt="">
                            </a>
                        </li>
                        <li>
                            <a href="https://youtube.com/channel/UChl4KY_EpOg4GAjrtKlu_vw">
                                <img src="https://levents.asia/template/assets/images/svg/ic-yt.svg" alt="">
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>

        <div class="footer_end">
            <div class="col-md-6" style="color: #302d2d;" >Dotai® - Share your color with the world</div>
            <div class="col-md-3" >
                <a style="color: #302d2d; text-decoration: none;" href="https://levents.asia/recruitment/" >Tuyển dụng</a>
            </div>
            <div class="col-md-3">
                <a style="color: #302d2d; text-decoration: none;" href="https://levents.asia/term-policies/" >Term &amp; Policies</a>
            </div>
        </div>
        
        
        <script src="js/jquery-3.7.0.min.js"></script> 
      <script src="js/jquery.validate.min.js"></script> 
    <script>
       
        
         var validator = $("#signUp").validate(
                  
                    {
                        rules: {
                            username: "required",
                            password: "required",
                            email : "required"
                        },
                        messages: {
                            username: "Username is required",
                            password: "Password is required",
                            email: "Email is required"
                        }
                    }
           

            );
    </script>
        
    </body>

</html>