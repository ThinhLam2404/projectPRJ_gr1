<%-- 
    Document   : orderInfo
    Created on : Nov 8, 2023, 5:58:55 PM
    Author     : thinh
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
        <title>Thông tin đơn hàng</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel = "icon" href =  "./img/logo.png" type = "image/x-icon">    

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
                                    <input type="number" name="quantity" value="${obj2.order_quan}" min="1" readonly>
<!--                                    <button class="btn btn-secondary" onclick="decrementQuantity(this)" data-order-name="${obj2.order_name}" data-address="${obj2.address}" data-phone="${obj2.phoneNumber}">-</button>
                                    <button class="btn btn-secondary" onclick="incrementQuantity(this)" data-order-name="${obj2.order_name}" data-address="${obj2.address}" data-phone="${obj2.phoneNumber}">+</button>-->
                                    <input type="hidden" name="order_name" class="order_name" value="${obj2.order_name}">
                                    <input type="hidden" name="address" class="address" value="${obj2.address}">
                                    <input type="hidden" name="phoneNumber" class="phoneNumber" value="${obj2.phoneNumber}">
                                </div>

                                <p class="card-text">${obj2.order_price}</p>
                                <p class="card-text">${obj2.address}</p>
                                <p class="card-text">${obj2.phoneNumber}</p>
                                <!--<button class="btn btn-danger" onclick="deleteCartItem(this)" data-ordername="${obj2.order_name}" data-address="${obj2.address}" data-phone="${obj2.phoneNumber}">Delete</a>-->
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
                    <button class="btn btn-primary mr-2">Back</button>
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
