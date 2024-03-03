<%-- 
    Document   : hiring
    Created on : Oct 27, 2023, 3:48:16 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DOTAI</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="contact.css">
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

            .menu ul {
                display: flex;
                justify-content: center;
                border-top: 1px solid gray;
                border-bottom: 1px solid gray;
            }

            .menu ul li {
                margin: 10px 60px;
                list-style-type: none;
            }

           .home {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 15px;
                margin-bottom: 15px;
                height: 42px;
                padding: 0px;
                text-align: center;
            }

            .logo{
                height: 100%;
                margin-left: 80px;
            }

            .logo a {
                background-color: black;
                color: white;
                text-decoration: none;
                padding: 6px 24px;
                font-weight: 800;
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

            .menu ul li a {
                text-decoration: none;
                color: gray;
            }

            .product {
                display: flex;
                flex-wrap: wrap;
            }

            .product img {
                width: 100%;
            }

            .xemthem {
                text-align: center;
                margin-top: 19px;
                margin-bottom: 51px;
            }

            .xemthem a {
                color: gray;
                border: 1px solid gray;
                padding: 5px 62px 5px 62px;
                text-decoration: none;
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
                margin-left: 15%;
                margin-bottom: 10%;
            }

            .ft {
                margin-bottom: 10%;
            }

            .ftCon {
                color: #707070;
            }

            .ftCon a {
                text-decoration: none;
                color: #707070;

            }

            .ftCon ul {
                list-style: none;
            }

            .LH a {
                color: #707070;
            }

            .footer_end {
                display: flex;
                background-color: #c0c0c0;
                padding: 15px;
            }

            .helper {
                background-color: rgb(59, 146, 246);
                position: fixed;
                text-align: right;
                padding-right: 8px;
                margin-bottom: 5px;
                margin-right: 5px;
                bottom: 0;
                right: 0;
                width: 90px;
                border-radius: 59px;
            }

            .helper a {
                font-size: 21px;
                color: white;
                text-decoration: none;
            }

            .contact {
                width: 94px;
                background-color: rgb(68, 66, 66);
                border: 1px solid rgb(68, 66, 66);
                color: white;
                font-family: "SVN-Futura Medium", sans-serif;
                text-align: center;
                margin-left: 43px;
                height: fit-content;
            }

            .big-contact p {
                width: 38%;
                font-size: 14px;
            }

            .contact-inf {
                display: flex;
                margin: 14px 0 14px 0;
            }

            .chinhanh {
                display: flex;
                margin-top: 25px;
            }

            .chinhanh img {
                width: 100%;
            }

            .shop-info p {
                width: 100%;
                margin-top: 25px;
                margin-bottom: 10px;
            }

            .shop-info span {
                font-weight: bold;
            }

            .map {
                display: flex;
                margin-bottom: 62px;
            }

            .hotro-title {
                font-size: 20px;
                font-family: "SVN-Futura Medium", sans-serif;
                text-transform: uppercase;
            }

            .hotro .name,
            .mail,
            .sdt {
                border-bottom: 1px solid #707070;
                padding: 0;
                margin: 6px 21px 6px 0;
            }

            .map .hotro .mail,
            .sdt {
                width: 50%;
            }

            textarea {

                border: 1px solid gray;
                outline: none;
            }

            .submit input {
                width: 94px;
                background-color: rgb(68, 66, 66);
                border: 1px solid rgb(68, 66, 66);
                color: white;
                font-family: "SVN-Futura Medium", sans-serif;
            }
            .recruit{
                font-family: "SVN-Futura light", sans-serif;
            }
            .recruit-image{
                background-image: url(https://levents.asia/wp-content/uploads/IMG_0879.jpeg-1-1200x988.jpg);
                height: 600px;
                background-repeat: no-repeat;
                background-size: cover;
                width: 95%;
                margin: 0 auto;
            }
            .recruit-intro{
                padding: 59px 39px;
                font-size: 14px;
                color: #636161;
                font-weight: 100;
            }

            .recruit-apply{
                padding: 0 1.5rem;
            }
            .recruit-apply h2{
                text-align: center;
                font-size: 19px;
                font-weight: bold;
                margin-bottom: 3%;
            }
            .apply-list div p{
                font-size: 14px;
                border-bottom: 1px solid gray;
                padding-bottom: 5%;
                padding-top: 2%;
            }
            .apply-list div{
                padding-left: 5%;
                padding-right: 5%;
            }
            .fl-wrap{
                display: flex;
                flex-wrap: wrap;
            }
            .admin{
                display:none;
            }
        </style>

    </head>

    <body>
        <div class="header">
            <div class="top">
                <h1>RELEASE OFFICIAL DOTAI® CLASSIC NEW PRODUCT LINE 2023</h1>
            </div>

            <!-- thanh tiêu đề-->

            <div class="home">

                <div class="col-1">
                    ${logOutBtn}
                </div>
                <div class="col-2">
                    ${email}
                </div>
              
                <div class="col-4 logo">
                    <div style="justify-content: center;display: flex;"><a href="index.jsp">DOTAI</a></div>
                </div>
                <div class="col-4 home-menu">
                    <img src="https://levents.asia/template/assets/images/notification.png" alt="bell">
                    <form action="search" style="display:inline;">
                    <input type="text" placeholder="Search" name="search"/> <button id="search" style="background-color: white !important; border: none !important;" type="submit">
                            <img
                        src="https://levents.asia/template/assets/images/svg/ic-ser.svg" alt="search">
                            </button>
                    </form>
                    <a href="loadCart" class="${admin}"><img src="https://levents.asia/template/assets/images/svg/ic-cart.svg" alt="cart"></a>
                    <a href="login.jsp" ${style}> <img  src="https://levents.asia/template/assets/images/svg/ic-user.svg" alt="user"></a><br/>

                </div>
            </div>


            <!-- thanh menu -->
            <div class="menu">
                <ul class="bmenu">
                    <li><a href="hideCart?email=${email}">About Us</a></li>
                    <li><a href="productList?email=${email}">Products</a></li>
                    <li><a href="sale?email=${email}">Sale</a></li>
                    <li><a href="hideCart2?email=${email}">Contact</a></li>
                    <li><a href="hideCart3?email=${email}">Customer Service</a></li>
                    <li><a href="hideCart4?email=${email}">Recruitment</a></li>
                </ul>
            </div>
        </div>

        <!--        body recruit        -->
        <div class="recruit">
            <div class="recruit-image"></div>
            <div class="recruit-intro">
                <div>
                    <p style="text-align: center; font-size: 17px">VĂN HOÁ</p>
                    <p>DOTAI luôn chú trọng đến văn hoá làm việc tại công ty . Tôn trọng sự sáng tạo và đột phá trong từng cá nhân, chúng tôi xây dựng văn hoá làm việc hiện đại, tiên tiến và lành mạnh, luôn hướng tới công ty hàng đầu trong lĩnh vực thời trang.</p>
                    <p>Tài sản lớn nhất của DOTAI là con người, vì vậy chúng tôi luôn có các chính sách để phát triển năng lực của từng cá nhân, và tạo điều kiện phát triển cho các nhân sự có tài năng, chúng tôi ưu tiên nhiều cho các tài năng trẻ, đào tạo các bạn từ còn đang học trên ghế nhà trường đến lúc bạn có thể làm việc trực tiếp tại công ty.</p>
                </div>
                <div>
                    <p style="text-align: center; font-size: 17px">GIÁ TRỊ CỐT LÕI CỦA DOTAI</p>
                    <p>SÁNG TẠO: Vì là trong lĩnh vực thời trang dành cho giới trẻ và cập nhật xu hương mới nhất nên luôn hướng đến sự sáng tạo để tạo nên những giá trị mới cho khách hàng và cho chính nhân viên. Vì lẽ đó, không gian làm việc tại  Levents  luôn được ban lãnh đạo đầu tư, thiết kế với thật nhiều không gian mở để các thành viên thỏa sức sáng tạo với cơ sở vật chất hiện đại, thân thiện môi trường.</p>    
                    <p>TỬ TẾ: Công ty luôn dành sự tôn trọng đến đội ngũ nhân viên, xây dựng tính nhân văn trong mỗi suy nghĩ và hành động.</p>
                    <p>CHĂM CHỈ : Chúng tôi không ngại thử thách, hết lòng làm việc một cách hăng hái, luôn có trách nhiệm hoàn thành sứ mệnh của mình. Song đó, chúng tôi luôn tạo ra sân chơi, sự kiện lành mạnh cho các thành viên tại công ty.</p>
                    <p>KỶ LUẬT: Với tiêu chí “Kỷ luật là sợi dây kết nối giữa ước mơ và hiện thực”, DOTAI luôn nâng cao tinh thần tự giác, tuân thủ quy định, ý thức trách nhiệm của mỗi cá nhân với trọng trách được giao.</p>
                </div>
            </div>

            <div class="recruit-apply">
                <h2>TUYỂN DỤNG</h2>
                <div class="apply-list fl-wrap">
                    <div class="col-6" style="border-right: 1px solid gray;">
                        <p>MARKETING EXECUTIVE (E-commerce</p>
                        <p>PR - PUBLIC RELATIONS</p>
                        <p>MANUFACTURING ASSISTANT</p>
                        <p>CHIEF CUSTOMER OFFICER</p>
                        <p>HUMAN RESOURCES MANAGEMENT</p>
                    </div>
                    <div class="col-6">
                        <p>ACCOUNTANT (General)</p>
                        <p>SALE IN-STORE STAFF</p>
                        <p>SALE ONLINE STAFF</p>
                        <p>WAREHOUSE STAFF</p>
                        <p>MARKETING MANAGER</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->
        <div class="footer">
            <div class="col-md-4">
                <div class="ft">
                    <h5><b>VỀ CHÚNG TÔI</b></h5>
                </div>
                <div class="ftCon">
                    <p class="p1">Dotai® – Share your color with the world</p>
                    <div class="ft__txt">
                        <p class="p1">HỘ KINH DOANH Red Label</p>
                        <p class="p1">GPKD được cấp bởi Cục Cảnh sát QLHC &amp; TTXH</p>
                        <p>Trụ sở hộ kinh doanh: 600 Nguyễn Văn Cừu, Phường An Bình, Quận Ninh Kiều, Tp. Cần Thơ</p>
                        <p>Mã só thuê: 4S5T6K7D8N9T</p>
                        <p class="p1">Ngày cấp: 01/01/2023</p>
                        <p>Người đại diện: Chưa biết</p>
                        <p class="p1">Mã Số thuế cá nhân: 0123456789-999</p>
                    </div>
                </div>
            </div>
            <!-- </div> -->

            <div class="col-md-8">
                <div class="col-4">
                    <div class="ft__title">
                        <h5><b>LIÊN HỆ</b></h5>
                    </div>
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
                                <a href="mailto:Customercare@levents.asia" class="hov-df f-bold">Customercare@dotai.asia</a>
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
                        <div class="ft__title">
                            <h5><b>HỖ TRỢ</b></h5>
                        </div>
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
                                        <a href="https://levents.asia/thanh-toan-online/">Thanh toán trực tuyến</a>
                                    </li>
                                    <li id="menu-item-808091">
                                        <a href="https://levents.asia/customer-care/chinh-sach-bao-mat/">Chính sách bảo
                                            mật</a>
                                    </li>
                                    <li id="menu-item-592379">
                                        <a href="https://levents.asia/customer-care/storage-instructions-copy-copy-copy/">Chính
                                            sách bảo hành</a>
                                    </li>
                                    <li id="menu-item-592380">
                                        <a href="https://levents.asia/quy-trinh-giai-quyet-khieu-nai-khach-hang/">Chính
                                            sách
                                            khiếu nại</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div>
                        <div class="ft">
                            <h5><b>CỬA HÀNG</b></h5>
                        </div>
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
                                  rel="noreferrer noopener">Lầu 2 Lankmark 81, Quận Bình Thạnh, HCM</a></p>
                        </div>
                        <div>
                            <p><a href="https://levents.asia/store/levents-can-tho/" data-type="URL"
                                  data-id="https://levents.asia/store/levents-can-tho/" target="_blank"
                                  rel="noreferrer noopener">100, Mậu Thân, Phường Xuân Khánh, Quận Ninh Kiều, Cần
                                    Thơ</a>
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
            <div class="col-md-6" style="color: #302d2d;">Dotai® - Share your color with the world</div>
            <div class="col-md-3">
                <a style="color: #302d2d; text-decoration: none;" href="https://levents.asia/recruitment/">Tuyển
                    dụng</a>
            </div>
            <div class="col-md-3">
                <a style="color: #302d2d; text-decoration: none;" href="https://levents.asia/term-policies/">Term &amp;
                    Policies</a>
            </div>
        </div>

        <!-- helper -->
        <div class="helper">
            <a href=""> <img style="width: 38%;" src="https://cdn-icons-png.flaticon.com/128/3670/3670042.png"
                             alt="">Help</a>
        </div>
    </body>
</html>
