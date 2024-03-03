<%-- 
    Document   : cartInfo
    Created on : Oct 29, 2023, 3:37:33 PM
    Author     : ADMIN
--%>
<%--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Thông tin đơn hàng</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        ${ms}
    </head>
    <body>
        <div class="container mt-4">
            <h2 class="text-center">Danh sách đơn hàng</h2>

            <!-- Đơn hàng 1 -->
            <c:forEach items="${list}" var="obj2">
                <div class="row mb-3">
                    <div class="col-md-3">
                        <img src="${obj2.order_pic}" alt="Hình sản phẩm" class="img-fluid">
                        <input type="hidden" name="pic" value="${obj2.order_pic}">
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">${obj2.username}</h5>
                                <p class="card-text">${obj2.order_name}</p>

                                <!-- Thẻ để tăng hoặc giảm giá trị -->
                                <div class="quantity">
                                    <input type="number" name="quantity" value="${obj2.order_quan}" min="1">
                                    <button class="btn btn-secondary" onclick="decrementQuantity(this)" data-order-name="${obj2.order_name}" data-address="${obj2.address}" data-phone="${obj2.phoneNumber}">-</button>
                                    <button class="btn btn-secondary" onclick="incrementQuantity(this)" data-order-name="${obj2.order_name}" data-address="${obj2.address}" data-phone="${obj2.phoneNumber}">+</button>
                                    <input type="hidden" name="order_name" class="order_name" value="${obj2.order_name}">
                                    <input type="hidden" name="address" class="address" value="${obj2.address}">
                                    <input type="hidden" name="phoneNumber" class="phoneNumber" value="${obj2.phoneNumber}">
                                </div>

                                <p class="card-text">${obj2.order_price}</p>
                                <p class="card-text">${obj2.address}</p>
                                <p class="card-text">${obj2.phoneNumber}</p>
                                <button class="btn btn-danger" onclick="deleteCartItem(this)" data-ordername="${obj2.order_name}" data-address="${obj2.address}" data-phone="${obj2.phoneNumber}">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <div class="text-center mt-4">
                <p>Tổng giá tiền các đơn hàng: ${sum}</p>
            </div>

            <!-- Thêm đơn hàng khác tại đây -->
            <div class="text-center mt-4">
                <form action="home" method="get">
                    <button class="btn btn-primary mr-2">Thêm đơn hàng</button>
                </form>
                <form action="addOrder" method="get">
                    <button class="btn btn-success">Thanh toán</button>
                </form>
            </div>
        </div>

        <script>
            function incrementQuantity(button) {
                const input = button.parentElement.querySelector('input[type="number"]');
                const quantity = parseInt(input.value) + 1;
                input.value = parseInt(input.value) + 1;
                const orderName = button.getAttribute('data-order-name');
                const address = button.parentElement.querySelector('.address').value;
                const phoneNumber = button.parentElement.querySelector('.phoneNumber').value;
                // Sử dụng orderName, address, và phoneNumber để thực hiện việc gửi dữ liệu lên servlet
                window.location.href = 'increaseQuan?sid=' + orderName + '&address=' + address + '&phoneNumber=' + phoneNumber + "&quantity=" + quantity;
            }

            function decrementQuantity(button) {
                const input = button.parentElement.querySelector('input[type="number"]');
                if (input.value > 1) {
                    const quantity = parseInt(input.value) - 1;
                    input.value = parseInt(input.value) - 1;
                    const orderName = button.getAttribute('data-order-name');
                    const address = button.parentElement.querySelector('.address').value;
                    const phoneNumber = button.parentElement.querySelector('.phoneNumber').value;
                    // Sử dụng orderName, address, và phoneNumber để thực hiện việc gửi dữ liệu lên servlet
                    window.location.href = 'decreaseQuan?sid=' + orderName + '&address=' + address + '&phoneNumber=' + phoneNumber + "&quantity=" + quantity;
                }
            }

            function deleteCartItem(deleteButton) {
                const orderName = deleteButton.getAttribute('data-ordername');
                // Sử dụng 'data-ordername'
                const address = deleteButton.getAttribute('data-address');
                const phoneNumber = deleteButton.getAttribute('data-phone');
                window.location.href = 'deleteCart?order_name=' + orderName + '&address=' + address + '&phoneNumber=' + phoneNumber;
            }
        </script>
    </body>
</html> 
--%>


<%-- 
    Document   : cartInfo
    Created on : Oct 29, 2023, 3:37:33 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
                <link rel = "icon" href =  "./img/logo.png" type = "image/x-icon">    

        <title>Thông tin đơn hàng</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        ${ms}
        <style>
            .info {
                font-size: larger;
                color:#81868b;
            }
            .quantity p{
                font-size: larger;
                color:#81868b;
            }
            .col-md-6 .card .card-body .btn btn-danger{
                text-align:center;
            }
            .baogia {
                font-family: monospace;
            }
            .danhsach h2{
                margin-bottom:40px;
            }
            .mr-2{
                margin-bottom: 10px;
            }
            .card {
                border:none;
            }
            .btn-danger {
                background-color:black;
                color:white;
                border-color:black;
            }
            .btn-danger:hover{
                background-color:black;
                color:white;
                border-color:black;
            }
            .btn-primary {
                background-color:black;
                color:white;
                border-color:black;
            }
            .btn-primary:hover{
                background-color:black;
                color:white;
                border-color:black;
            }
            .btn-success{
                background-color:black;
                color:white;
                border-color:black;
            }
            .btn-success:hover {
                background-color:black;
                color:white;
                border-color:black;
            }
            .a{
                display:flex;
            }
            .quantity {
                display:flex;
            }
            .btn-secondary {
                height:24%;
                margin-left: 20px;
                width:10%;


            }
            .quantity p input {
                width :35%;
            }
            .btn-secondary


        </style>
    </head>
    <body>
        <div class="container mt-4 danhsach">
            <h2 class="text-center">Danh sách đơn hàng</h2>

            <!-- Đơn hàng 1 -->
            <c:forEach items="${list}" var="obj2">
                <div class="row mb-3">
                    <div class="col-md-3">
                        <img src="${obj2.order_pic}" alt="Hình sản phẩm" class="img-fluid">
                        <input type="hidden" name="pic" value="${obj2.order_pic}">
                    </div>
                    <div class="col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">${obj2.username}</h5>
                                <p class="card-text">${obj2.order_name}</p>

                                <!-- Thẻ để tăng hoặc giảm giá trị -->
                                <div class="quantity">
                                    <p>
                                        Quantity: <input type="number" name="quantity" value="${obj2.order_quan}" min="1">
                                    </p>
                                    <button class="btn btn-secondary" onclick="decrementQuantity(this)" data-order-name="${obj2.order_name}" data-address="${obj2.address}" data-phone="${obj2.phoneNumber}">-</button>
                                    <button class="btn btn-secondary" onclick="incrementQuantity(this)" data-order-name="${obj2.order_name}" data-address="${obj2.address}" data-phone="${obj2.phoneNumber}">+</button>
                                    <input type="hidden" name="order_name" class="order_name" value="${obj2.order_name}">
                                    <input type="hidden" name="address" class="address" value="${obj2.address}">
                                    <input type="hidden" name="phoneNumber" class="phoneNumber" value="${obj2.phoneNumber}">
                                </div>
                                <div class = "info">
                                    <div class ="a">Price: <p class="card-text">${obj2.order_price}</p></div>
                                    <div class ="a">Address: <p class="card-text">${obj2.address}</p></div>
                                    <div class ="a">Phone number: <p class="card-text">${obj2.phoneNumber}</p></div>
                                </div>
                                <button class="btn btn-danger" onclick="deleteCartItem(this)" data-ordername="${obj2.order_name}" data-address="${obj2.address}" data-phone="${obj2.phoneNumber}">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <div class = "baogia">
                <div class="text-center mt-4">
                    <p>Tổng giá tiền các đơn hàng: ${sum}</p>
                </div>
            </div>

            <!-- Thêm đơn hàng khác tại đây -->

            <div class="text-center mt-4">
                <form action="home" method="get">
                    <button class="btn btn-primary mr-2">Thêm đơn hàng</button>

                </form>
                <form action="addOrder" method="get">
                    <button class="btn btn-success">Thanh toán</button>
                </form>
            </div>


        </div>


        <script>
            function incrementQuantity(button) {
                const input = button.parentElement.querySelector('input[type="number"]');
                const quantity = parseInt(input.value) + 1;
                input.value = parseInt(input.value) + 1;
                const orderName = button.getAttribute('data-order-name');
                const address = button.parentElement.querySelector('.address').value;
                const phoneNumber = button.parentElement.querySelector('.phoneNumber').value;
                // Sử dụng orderName, address, và phoneNumber để thực hiện việc gửi dữ liệu lên servlet
                window.location.href = 'increaseQuan?sid=' + orderName + '&address=' + address + '&phoneNumber=' + phoneNumber + "&quantity=" + quantity;
            }

            function decrementQuantity(button) {
                const input = button.parentElement.querySelector('input[type="number"]');
                if (input.value > 1) {
                    const quantity = parseInt(input.value) - 1;
                    input.value = parseInt(input.value) - 1;
                    const orderName = button.getAttribute('data-order-name');
                    const address = button.parentElement.querySelector('.address').value;
                    const phoneNumber = button.parentElement.querySelector('.phoneNumber').value;
                    // Sử dụng orderName, address, và phoneNumber để thực hiện việc gửi dữ liệu lên servlet
                    window.location.href = 'decreaseQuan?sid=' + orderName + '&address=' + address + '&phoneNumber=' + phoneNumber + "&quantity=" + quantity;
                }
            }

            function deleteCartItem(deleteButton) {
                var option = confirm('Are you sure to delete');
                if (option === true) {
                    const orderName = deleteButton.getAttribute('data-ordername');
                    // Sử dụng 'data-ordername'
                    const address = deleteButton.getAttribute('data-address');
                    const phoneNumber = deleteButton.getAttribute('data-phone');
                    window.location.href = 'deleteCart?order_name=' + orderName + '&address=' + address + '&phoneNumber=' + phoneNumber;
                }
            }
        </script>
    </body>
</html>