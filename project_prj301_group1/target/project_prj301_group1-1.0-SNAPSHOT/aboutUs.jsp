<%-- 
    Document   : aboutUs
    Created on : Oct 27, 2023, 3:46:09 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <link rel="stylesheet" href="au.css">
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
                text-align: center;
            }

            .logo{
                height: 100%;
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
            .menu ul li a{
                text-decoration: none;
                color: gray;
            }


            .title{
                text-align: center;
                color: #636161;
                font-weight: 100;
                font-size: 32px;
                line-height: 50px;
            }
            .content{
                text-align: center;
                color: #a09999;
                margin: 50px;
            }
            .pr{
                margin: 20px;
                width: 97%;
            }
            .content_1{
                display: flex;
                line-height: 23px;
                color: #a3a3a3;
            }
            .left{
                text-align: center;
                font-weight: 100;
                font-size: 32px;
                line-height: 50px;
                margin: 150px;
            }
            .right{
                font-size: 19px;
                text-align: center;
                margin: 100px;
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
            .none{
                display: none;
            }
            .admin{
                display:none;
            }
        </style>

        <title>About Us</title>
    </head>

    <body>


        <div class="header">
            <div class="top">
                <h1>RELEASE OFFICIAL DOTAI® CLASSIC NEW PRODUCT LINE 2023 </h1>
            </div>

            <!-- thanh tiêu đề-->

            <div class="home">

                <div class="col-1">
                    ${logOutBtn}
                </div>
                <div class="col-2">
                    ${email}
                </div>
                <form action="addOrder" method="post">
                    <div  class="none col-1" ${stylee}>
                        <button style="border:none;padding:5px 15px ;background-color: #cacaca;" type="submit">List order</button>
                    </div>
                </form>
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
                <ul>
                    <li><a href="hideCart?email=${email}">About Us</a></li>
                    <li><a href="productList?email=${email}">Products</a></li>
                    <li><a href="sale?email=${email}">Sale</a></li>
                    <li><a href="hideCart2?email=${email}">Contact</a></li>
                    <li><a href="hideCart3?email=${email}">Customer Service</a></li>
                    <li><a href="hideCart4?email=${email}">Recruitment</a></li>
                </ul>
            </div>
        </div>

        <!-- CONTENT -->
        <h6 style="text-align: center; margin: 50px;"><b>ABOUT US</b></h6>
        <h2 class="title">WHO WE ARE<br>Dotai® - Share your Color
            <br>/ Do-tai /
        </h2>
        <p class="content">Dotai là thương hiệu thời trang đường phố dẫn dầu xu hướng với phong cách thiết kế đơn
            giản, hiện đại, <br>sản phẩm tiêu chuẩn cao dành cho giới trẻ toàn cầu tự tin thể hiện cá tính. </p>
        <img class="pr"
             src="https://levents.asia/wp-content/uploads/elementor/thumbs/homepage-ngang-4-1-scaled-prlzs731tmqluu3qoxoodpyzvmm53nywlrfokljhu8.jpg"
             alt="">
        <div class="content_1">
            <div class="col-md-6">
                <h2 class="left">WHAT WE DO<br>Young generation ally</h2>
            </div>
            <div class="col-md-6">
                <p class="right">Sứ mệnh của Dotai® là Cổ vũ cho thế hệ trẻ toàn
                    thế giới tự do thể hiện phong cách thông qua thời trang, thương hiệu vượt qua ranh giới của thời
                    trang
                    đường phố bằng cách không ngừng sáng tạo các trang phục trong các bộ sưu tập độc đáo. Levents® mong
                    muốn
                    đồng hành và tôn vinh thế hệ trẻ tài năng qua những xu hướng thời trang và hoạt động cộng đồng sáng
                    tạo.
                    Từ đó tạo dấu ấn cho giá trị bền vững để cùng các tài năng trẻ phát triển.</p>
            </div>
        </div>
        <img class="pr"
             src="https://levents.asia/wp-content/uploads/elementor/thumbs/homepage-ngang-2-1-scaled-prlzqw34bwy9qc00bddbx1ty6d1sessbratekrh6hc.jpg"
             alt="">
        <div class="content_1" data-id="f889abd">
            <div class="col-md-6">
                <h2 class="left">WHY WE DO<br>The first step to better vibes</h2>
            </div>
            <div class="col-md-6">
                <p class="right">Mặc đẹp hơn để cuộc sống tốt hơn. <br><br>
                    Tầm nhìn độc đáo của Dotai® chính là để mỗi cá nhân tự do thể hiện phong cách khi khoác lên mình
                    những sản phẩm được tạo nên từ sự đam mê, mang giá trị của thế hệ mới, đầy trẻ trung, năng động và
                    luôn không ngừng khẳng định bản thân, hướng đến tương lai. <br><br>
                    Sự đầu tư từ chất lượng đóng gói, bao bì sản phẩm đến mỗi thước phim, hình ảnh cho tới cách làm chủ
                    được nghệ thuật sắc màu và chỉn chu trong từng chi tiết đã đưa Dotai® trở thành một trong những
                    thương hiệu thời trang Đường phố được giới trẻ yêu thích, tin dùng hàng đầu tại Việt Nam.</p>
            </div>
        </div>
        <img class="pr" style="margin-bottom: 200px;"
             src="https://levents.asia/wp-content/uploads/elementor/thumbs/Untitled-3-1-prb4bhjxpwu6l1zt2rxzmkhvra4hmkcrfkewp4nzfk.png"
             alt="">



        <!-- <div class="footer"> -->
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
                                        <a
                                            href="https://levents.asia/customer-care/storage-instructions-copy-copy-copy/">Chính
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
    </body>

</html>