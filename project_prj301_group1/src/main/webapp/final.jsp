<%-- 
    Document   : final
    Created on : Nov 6, 2023, 2:33:09 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Thank you</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel = "icon" href =  "./img/logo.png" type = "image/x-icon">    

    </head>
    <body>
        <div class="container mt-5">
            <div class="jumbotron text-center">
                <h1 class="display-4">Cảm ơn bạn đã mua hàng thành công!</h1>
                <p class="lead">Chúng tôi đã nhận đơn hàng của bạn và sẽ giao hàng trong thời gian sớm nhất.</p>
                <hr class="my-4">
                <p>Vui lòng kiểm tra email của bạn để biết thêm chi tiết về đơn hàng.</p>
                <form action="home">
                    <button class="btn btn-primary" type="submit">Back to Home</button>
                </form>
            </div>
        </div>
    </body>
</html>