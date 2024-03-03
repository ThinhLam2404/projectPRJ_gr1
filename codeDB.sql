
create table account(
username nvarchar(50) primary key, 
[password] nvarchar(32),
[email] nvarchar(100)
)

create table product(
[type] int,
pro_quan int, 
pro_id int primary key,
pro_name nvarchar(50),
pro_sale int,
pro_price int, 
pro_pic nvarchar(max),
pro_des nvarchar(max)
)


create table [order](
username nvarchar(50) foreign key references account,
order_quan int,
order_price int, 
[address] nvarchar(60),
phoneNumber nvarchar(50),
order_name nvarchar(max),
order_pic nvarchar(max)
)

create table cart(
username nvarchar(50) foreign key references account,
order_quan int,
order_price int, 
[address] nvarchar(60),
phoneNumber nvarchar(50),
order_name nvarchar(max),
order_pic nvarchar(max)
)

insert into account
values('admin', CONVERT(VARCHAR(32), HashBytes('MD5', 'admin'), 2), 'thinhldce171774@fpt.edu.vn'),
('user', CONVERT(VARCHAR(32), HashBytes('MD5', '123456'), 2), 'userforprj301@gmail.com')

insert into product([type], pro_id,pro_quan, pro_name, pro_sale, pro_price, pro_pic, pro_des)
values(0,1,10,'test ao',0,100000,'https://bizweb.dktcdn.net/100/415/697/products/mc3-fb5749ff-d267-4a6e-8c6b-db2901aacf22.jpg?v=1637916273907', 'nothing'),
(1,2,5,'test quan',10,150000,'https://d2gip3isldke5z.cloudfront.net/products/10467/800-tre-kids-boys-poly-cotton-sports-short-16781690616948.png', 'nothing')

insert into product
values(0,5,3,'LEVENTS® CLASSIC REGULAR POLO/ BLACK',30, 399000, 'https://levents.asia/wp-content/uploads/2023/08/z4740519159388_8783a2dd4bc415be4bd92dbcdcd40403-2048x2048.jpg', ''),
(0,2,4,'LEVENTS® AIRPLANE TEE/ BLACK',5, 380000, 'https://levents.asia/wp-content/uploads/2023/08/MT-2-2048x2048.jpg', ''),
(0,2,5,'LEVENTS® SOMETHING BOXY TEE/ BLACK',0, 362000, 'https://levents.asia/wp-content/uploads/2023/08/MT-1-2048x2048.jpg', ''),
(0,2,6,'LEVENTS® SPOOKY TEE/ BLACK',5, 361000, 'https://levents.asia/wp-content/uploads/2023/10/BLACK-_-MT-1-2048x2048.jpg', ''),
(0,2,7,'LEVENTS® TIMES NEW ROMAN BOXY TEE/ WHITE',5, 360000, 'https://levents.asia/wp-content/uploads/2023/08/MT-2048x2048.jpg', ''),
(0,2,8,'LEVENTS® PIXEL FLOWER TEE/ BLACK',5, 380000, 'https://levents.asia/wp-content/uploads/2023/05/z4407015339773_67175f198d6947319f9b7e6c39ac01fb-2048x2048.jpg', ''),
(0,2,9,'LEVENTS® JOGGER TEE/ BLUE',5, 380000, 'https://levents.asia/wp-content/uploads/2023/05/z4366452808032_68dbd6a56705b002b265d200362442a9-2048x2048.jpg', ''),
(0,2,10,'LEVENTS® JOGGER TEE/ WHITE',5, 380000, 'https://levents.asia/wp-content/uploads/2023/05/z4366453314543_2510b1827ca2aeb5f73d82412b5e639d-2048x2048.jpg', ''),
(0,2,11,'LEVENTS® HOT AIR BALLOON TEE/ CREAM',5, 380000, 'https://levents.asia/wp-content/uploads/2023/05/z4367122127882_9abe3e9ee8d6bcced004f52e7830a7f7-2048x2048.jpg', ''),
(0,2,12,'LEVENTS® BICHONTOUR TEE/ BROWN',5, 380000, 'https://levents.asia/wp-content/uploads/2023/03/z4294278920849_d1bb4734b2a7deff20412862e774c88a-2048x2048.jpg', ''),
(0,2,13,'LEVENTS® 2LIP TEE/ CREAM',5, 380000, 'https://levents.asia/wp-content/uploads/2022/08/z3604024746657_c8a7ca453f9332a2ddcff815171d73be-2048x2048.jpg', ''),
(1,5,14,'LEVENTS® CLASSIC LINE TRACK PANTS/ BLACK',10, 423000, 'https://levents.asia/wp-content/uploads/2023/08/z4740516430875_be9f81b1151fe1acc362dc0cf8ec2b85-2048x2048.jpg', ''),
(1,5,15,'LEVENTS® CLASSIC WASH STRAIGHT JEANS/ BLACK',10, 423000, 'https://levents.asia/wp-content/uploads/2023/08/MT-6-2048x2048.jpg', ''),
(1,5,16,'LEVENTS® | POPPOP CARGO PANTS/ BLACK',10, 423000, 'https://levents.asia/wp-content/uploads/2022/11/z3953250894659_524622aed1ba0399d44daf34c81b0dc2-2048x2048.jpg', ''),
(1,5,17,'LEVENTS® CLASSIC SHORTPANTS/ BLACK',10, 423000, 'https://levents.asia/wp-content/uploads/2023/08/z4740519534097_7d10d4a42f55a0990432b644bc6f831c-2048x2048.jpg', ''),
(1,5,18,'LEVENTS® CRAYON JEANS/ BLACK',10, 423000, 'https://levents.asia/wp-content/uploads/2022/09/z3734003607494_66150ebfd9ddc4da64ef6e2d908a84e8-1-2048x2048.jpg', ''),
(1,5,19,'LEVENTS® KHAKI PANTS/ BEIGE',10, 423000, 'https://levents.asia/wp-content/uploads/2022/09/z3734003837021_096e3d52a49bfae4b5d023cd25580ece-2048x2048.jpg', ''),
(1,5,20,'LEVENTS® PLAY LOGO SHORTPANT/ GREEN',10, 423000, 'https://levents.asia/wp-content/uploads/2022/08/z3583815840434_5fa457be268ebef88335a57ce589c613-2048x2048.jpg', ''),
(1,5,21,'LEVENTS® SPACE SHORTPANTS / CREAM',10, 423000, 'https://levents.asia/wp-content/uploads/2022/06/SHORT-DU-C1-1-scaled.jpg', ''),
(1,5,22,'LÌ VEN ESSENTIAL SHORTPANT/ BLACK',10, 423000, 'https://levents.asia/wp-content/uploads/2022/06/WB_SHORT_B1-scaled.jpg', ''),
(1,5,23,'LEVENTS® CLASSIC SHORTPANTS/ CREAM',10, 423000, 'https://levents.asia/wp-content/uploads/2023/08/z4740519732919_1a6835551178815f90fbdcb58e95ecab-2048x2048.jpg', '')


