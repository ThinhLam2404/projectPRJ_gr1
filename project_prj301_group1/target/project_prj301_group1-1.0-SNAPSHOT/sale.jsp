<%-- 
    Document   : index
    Created on : Oct 27, 2023, 3:44:22 PM
    Author     : LENOVO
--%>


<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel = "icon" href =  "./img/logo.png" type = "image/x-icon">
        <style>
            #filter {
                width: 7%;
            }
            .filterBtn {
                height: 95%;
            }
            .item {
                height: 450px;
            }
            .item img {
                height: 283.35px;
            }
            img:hover {
                cursor: pointer;
            }
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
                margin-left: 11%;
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
            .helper a{
                font-size: 21px;
                color: white;
                text-decoration: none;
            }
            .map{
                display: flex;
            }
            .hotro-title{
                font-size: 20px;
                font-family: "SVN-Futura Medium", sans-serif;
                text-transform: uppercase;
            }
            .map .hotro .name,.mail,.sdt{
                border-bottom: 1px solid #707070;
                padding: 0;
                margin: 6px;
            }
            .map .hotro .mail,.sdt{
                width: 50%;
            }
            textarea{
                padding: 20px 25px 20px 25px;
                border: 1px solid gray;
                outline: none;
            }
            .submit input{
                width: 94px;
                background-color: rgb(68, 66, 66);
                border: 1px solid rgb(68, 66, 66);
                color: white;
                font-family: "SVN-Futura Medium", sans-serif;
            }
            .admin {
                display: none;
            }

            .sale{
                /*content: attr(stt);*/
                background-color: #e2002a;
                color: #fff;
                min-width: 40px;
                text-align: center;
                padding: 3px;
                font-size: 9px;
                z-index: 9;
                position: absolute;
                top: 0;
                left: 5px;
            }
            .filterimg{
                margin: 0px -30px 5px 30px;
            }
            .filter {
                color: white;
                margin: 0 10px;
                width: 80px;
                border: none;
                background: black;
                height: 39px;
                border-radius: 5px;
            }
            .none{
                display: none;
            }
            .admin2{
                display: none;
            }
            .user{
                display: none;
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
                   <input style="width: 140%;border: none; outline: none;" name="mail" value="${email}" id="mail" readonly>
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
    <center >
        <a href="addProduct.jsp" class="admin add" ${cssAdmin} >Add product</a>
    </center>

    <form action="productList" method="post">
        <input type="hidden" value="${email}" name="email" />
        <div style="display: flex; margin: 100px 0 20px 0;">
            <img class="filterimg" src="https://levents.asia/template/assets/images/svg/ic-filter.svg" alt="">
            <select name="filterID" id="filter" class="form-control ml-5 mb-2">
                <option value="Top">Top</option>
                <option value="Bottom">Bottom</option>
            </select>
            <button type="submit" name="submit"  class="filter"> Filter</button>
        </div>
    </form>
    <!-- product list -->
    <div class="product ${admin}">

        <c:forEach items="${listProduct}" var="product">


            <a onclick="checkLogin('${product.getPro_id()}')" href="#" class="product-link doimau">

                <div class="col-3 item">
                    <div class="sale">

                        ${product.getPro_sale()}%
                    </div>
                    <img src="${product.getPro_pic()}" alt="levent">
                    <p>${product.getPro_name()}</p>

                    <!<!-- Tính số tiền trước khi giảm -->
                    <c:set var="realPrice" value="${product.getPro_price() * (1 + (product.getPro_sale() / 100))}" />

                    <!--định dạng price từ 100000 thành 100,000-->
                    <c:set var="formattedPrice">
                        <fmt:formatNumber type="number" value="${product.getPro_price()}" pattern="###,###" />
                    </c:set>

                    <c:set var="formattedRealPrice">
                        <fmt:formatNumber type="number" value="${realPrice}" pattern="###,###" />
                    </c:set>
                    <!------------>
                    <div style="display: flex"> 
                        <p class="col-4" style="text-decoration: line-through;color: gray">${formattedRealPrice}vnđ </p>
                        <p style="color: red;">${formattedPrice} vnđ</p>
                    </div>

                    <a ${cssAdmin} class="admin" href ="updateProduct?pro_id=${product.getPro_id()}">Update</a>
                    <a ${cssAdmin} class="admin" href="#" onclick="doDelete('${product.getPro_id()}')">Delete </a> 


                </div>
            </a>
        </c:forEach> 



    </div>


    <div class="product ${user} ${admin2}">

        <c:forEach items="${listProduct}" var="product">



            <div class="col-3 item">
                <div class="sale">

                    ${product.getPro_sale()}%
                </div>
                <img src="${product.getPro_pic()}" alt="levent">
                <p>${product.getPro_name()}</p>

                <!<!-- Tính số tiền trước khi giảm -->
                <c:set var="realPrice" value="${product.getPro_price() * (1 + (product.getPro_sale() / 100))}" />

                <!--định dạng price từ 100000 thành 100,000-->
                <c:set var="formattedPrice">
                    <fmt:formatNumber type="number" value="${product.getPro_price()}" pattern="###,###" />
                </c:set>

                <c:set var="formattedRealPrice">
                    <fmt:formatNumber type="number" value="${realPrice}" pattern="###,###" />
                </c:set>
                <!------------>
                <div style="display: flex"> 
                    <p class="col-4" style="text-decoration: line-through;color: gray">${formattedRealPrice}vnđ </p>
                    <p style="color: red;">${formattedPrice} vnđ</p>
                </div>

                <a ${cssAdmin} class="admin" href ="updateProduct?pro_id=${product.getPro_id()}">Update</a>
                <a ${cssAdmin} class="admin" href="#" onclick="doDelete('${product.getPro_id()}')">Delete </a> 


            </div>
        </c:forEach> 



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

    <script type="text/javascript">
        function doDelete(id) {
            if (confirm("Do you want to delete this product (" + id + ")?")) {
                window.location = "deleteProduct?pro_id=" + id;
            }
        }
        function checkLogin(id) {
            var email2 = document.getElementById("mail").value;
            if (email2 === '') {
                alert("Must be login first");
            } else {
                window.location = "detailProduct?sid=" + id;

            }
        }
    </script>
</body>
</html>
