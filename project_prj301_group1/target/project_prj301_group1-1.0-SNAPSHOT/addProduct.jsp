

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel = "icon" href =  "./img/logo.png" type = "image/x-icon">   
        <style>
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

            .menu a{
                display: block;
                transition: all 0.1s ease;
            }
            .menu a:hover{
                transform: scale(1.2);
                color: black;
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
            .body h2 {
                text-align: center;
                margin: 55px;
                font-size: 14px;
            }
            .menu ul li a{
                text-decoration: none;
                color: rgb(136, 131, 131);
            }

            .container {
                width: 50%;
                margin: 5% 25%;
            }

            .center h1 {
                text-align: center;
                padding: 0 0 20px 0;
                border-bottom: 1px solid silver;
            }

            .center form {
                padding: 0 0px;
                box-sizing: border-box;
            }

            .mid{
                display: flex;
            }

            form .txt_field {
                position: relative;
                border-bottom: 2px solid #adadad;
                margin: 30px 65px;
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
            .form-control{
                border: none;
                color: #9b9696;
                width: 100%;
                padding: 9px 4px;
            }
        </style>
    </head>

    <body>
        <div class="header">
            <div class="top">
                <h1>MANAGEMENT MODE</h1>
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
                    <a href="">DOTAI</a>
                </div>
                <div class="col-4 home-menu">
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
                <h1>Add Product</h1>
                <form action="addProduct" id="addForm">


                    <div class="mid">
                        <div class="left">
                            <div class="txt_field">

                                <select name="type" id="type" class="form-control">
                                    <option value="0">Top</option>
                                    <option value="1">Bottom</option>
                                </select>
                            </div>
                            <div class="txt_field">
                                <input type="number" name="pro_quan" id="pro_quan" required>
                                <span></span>
                                <label>Quantity</label>
                            </div>
                            <div class="txt_field">
                                <input type="number" name="pro_id" id="pro_id" class="form-control" required>
                                <span></span>
                                <label>ID</label>
                            </div>
                            <div class="txt_field">
                                <input type="text" name="pro_name" id="pro_name" required>
                                <span></span>
                                <label>Name</label>
                            </div>
                        </div>

                        <div class="right">
                            <div class="txt_field">
                                <input type="number" name="pro_sale" id="pro_sale" required>
                                <span></span>
                                <label>Sale</label>
                            </div>
                            <div class="txt_field">
                                <input  type="number" name="pro_price" id="pro_price" required>
                                <span></span>
                                <label>Price</label>
                            </div>
                            <div class="txt_field">
                                <input type="text" name="pro_pic" id="pro_pic" required>
                                <span></span>
                                <label>Picture</label>
                            </div>
                            <div class="txt_field">
                                <input type="text" name="pro_des" id="pro_des"  required>
                                <span></span>
                                <label>Description</label>
                            </div>
                        </div>
                    </div>




                    <input name="submit" type="Submit" value="ADD">
                </form>
            </div>
        </div>

        <!-- <div class="ft__lim"> -->


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
        <script src="js/jquery-3.7.0.min.js"></script> 
        <script src="js/jquery.validate.min.js"></script> 
        <script>

//            int type;
//    int pro_quan;
//    int pro_id;
//    String pro_name;
//    int pro_sale;
//    int pro_price;
//    String pro_pic;
//    String pro_des;
            var validator = $("#addForm").validate({
                rules: {
                    pro_quan: {
                        required: true
                    },
                    pro_id: {
                        required: true

                    },
                    pro_name: "required",
                    pro_sale: "required",
                    pro_price: "required",
                    pro_pic: "required",
                    pro_des: "required"

                },
                messages: {
                    pro_quan: {
                        required: "Quantity is required",

                    },
                    pro_id: {
                        required: "ID product is required",

                    },
                    pro_name: "Name is required",
                    pro_sale: "Sale is required",
                    pro_price: "Price is required",
                    pro_pic: "Picture URL is required",
                    pro_des: "Description is required"

                }
            });
        </script>
    </body>

</html>