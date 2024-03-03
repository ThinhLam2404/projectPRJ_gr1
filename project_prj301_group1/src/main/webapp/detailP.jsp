<%-- 
    Document   : detailP
    Created on : Nov 2, 2023, 4:34:17 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Infomation</title>
        <!-- Liên kết đến tệp CSS Bootstrap -->
        <link rel="stylesheet" href="./boostrap/bootstrap.min.css" />
        <link rel = "icon" href =  "./img/logo.png" type = "image/x-icon">    
        <style>
            .error{
                color: red;
            }
        </style>
        ${ms}
    </head>

    <body>

        <div class="container">
            <!-- Nút "Back to List" -->
            <a href="home" class="btn btn-dark mt-3">Back to List</a>

            <form action="addCart" method="post" id="detailP">
                <div class="row">
                    <div class="col-md-6">
                        <img src="${p.pro_pic}" class="img-fluid" alt="Hình sản phẩm">
                    </div>
                    <div class="col-md-6">
                        <h1>${p.pro_name}</h1>
                        <h3>Sale: ${p.pro_sale}%</h3>
                        <h3>Price: ${p.pro_price} VND</h3>

                        <p>Số lượng: <span id="quantity">1</span> <button type="button" class="btn btn-secondary"
                                                                          onclick="decreaseQuantity()">-</button> <button type="button" class="btn btn-secondary"
                                                                          onclick="increaseQuantity()">+</button></p>
                        <!-- Trường input để chứa quantity -->
                        <input type="text" name="quantity" id="quantityInput" value="1" style="display: none;">
                        <div class="form-group">
                            <label for="phoneNumber">Số điện thoại:</label>
                            <input type="number" class="form-control" id="phoneNumber" name="phoneNumber"
                                   placeholder="Nhập số điện thoại" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Địa chỉ:</label>
                            <input type="text" class="form-control" id="address" name="address" placeholder="Nhập địa chỉ"
                                   required>
                        </div>
                        <input type="hidden" name="pic" class="pic" value="${p.pro_pic}">
                        <input type="hidden" name="nameP" class="nameP" value="${p.pro_name}">
                        <input type="hidden" name="priceP" class="priceP" value="${p.pro_price}">
                        <input type="hidden" name="quantity" id="quantityInput" value="1">
                        <input type="hidden" name="phoneNumber" value="">
                        <input type="hidden" name="address" value="">
                        <button class="btn btn-dark" type="submit" id="addToCartButton"> Thêm vào giỏ</button>
                    </div>
                </div>
            </form>

            <div class="row mt-3">
                <div class="col-md-12">
                    <h2>Thông tin</h2>
                    <p>Dotai® Classic Regular Polo</p>
                    <p>Material: Đô-tai Original 2.0</p>
                    <p>Đây là sản phẩm thuộc dòng sản phẩm mới chưa từng có từ trước đến nay – DOTAI® CLASSIC.</p>
                    <p>DOTAI® CLASSIC với mục tiêu trở thành dòng sản phẩm "EVERY WEAR" là sự kết hợp tinh tế giữa
                        thiết kế đơn giản, hiện đại và form dáng cổ điển, tập trung về chất liệu và màu sắc đa dạng.</p>
                    <p>Hứa hẹn mang đến những item thoải mái để bạn tự tin thể hiện cá tính, phù hợp với mọi hoạt động dạo phố hàng ngày.</p>
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-md-12">
                    <h2>Quy định đổi trả</h2>
                    <p>Nhằm mang lại cho bạn sự tiện lợi và những trải nghiệm tuyệt vời khi mua hàng, tụi mình đã phát triển dịch vụ đổi hàng tận nơi và chính sách bảo hành.</p>
                </div>
            </div>
        </div>

        <script src="js/jquery-3.7.0.min.js"></script> 
        <script src="js/jquery.validate.min.js"></script> 
        <script>
                                    function increaseQuantity() {
                                        var quantity = parseInt(document.getElementById("quantity").textContent);
                                        if (!isNaN(quantity)) {
                                            document.getElementById("quantity").textContent = quantity + 1;
                                            document.getElementById("quantityInput").value = quantity + 1;
                                        }
                                    }

                                    function decreaseQuantity() {
                                        var quantity = parseInt(document.getElementById("quantity").textContent);
                                        if (!isNaN(quantity) && quantity > 1) {
                                            document.getElementById("quantity").textContent = quantity - 1;
                                            document.getElementById("quantityInput").value = quantity - 1;
                                        }
                                    }


                                    var validator = $("#detailP").validate(
                                            {
                                                rules: {
                                                    phoneNumber: {
                                                        required: true,
                                                        minlength: 10,
                                                        maxlength: 10
                                                    },
                                                    address: "required"

                                                },
                                                messages: {
                                                    phoneNumber: {
                                                        required: "Phone number is required"
                                                    },
                                                    address: "Address is required"

                                                }
                                            }
                                    );
        </script>


    </body>

</html>