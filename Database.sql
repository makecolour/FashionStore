
--Create Database db
--use db


--bảng vai trò
CREATE TABLE role (
    role_Id int PRIMARY KEY IDENTITY(1,1),
    role_name VARCHAR(100) NOT NULL
)
INSERT INTO role (role_name) VALUES
( 'Admin'),
( 'Test'),
( 'Customer');

-- Users table
CREATE TABLE Users (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) not null,
    Email NVARCHAR(255),
    Password NVARCHAR(255),
    Role INT
	  FOREIGN KEY (role) REFERENCES role(role_Id)
);

-- Insert sample data into Users table
INSERT INTO Users (Name, Email, Password, Role)
VALUES 
    ('admin' ,'admin@gmail.com', '12345', 1),
    ('customer1','customer1@gmail.com', '12345', 3),
    ('customer2' ,'customer2gmail.com', '12345',3),
	('customer3' ,'customer3@gmail.com', '12345', 3);


-- Categories table
CREATE TABLE Categories (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255)
);

-- Insert sample data into Categories table
INSERT INTO Categories (Name)
VALUES 
    (N'Converse'),
    (N'Vans'),
    (N'Nike'),
    (N'Adidas'),
    (N'MLB');



-- Products table
CREATE TABLE Products (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255),
    Description NVARCHAR(MAX),
    Price INT,
    Image NVARCHAR(MAX),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(ID),
);

-- Insert sample data into Products table
INSERT INTO Products (Name, Description, Price, Image, CategoryID)
VALUES 

    (N'CONVERSE ĐEN THẤP', N'- Converse 1970 được lấy cảm hứng từ Converse Classic từ đường may cho đến sự đổi mới và trau chuốt trong đường khâu. Đôi giày này đã thổi một luồng khí mới vào thương hiệu giày Converse.

- Mũi giày của 1970s mỏng hơn mũi giày Classic. Phần mũi giày thon gọn của 1970s có thể là do lớp lót cao su màu đen cao hơn.

- Chất lượng hàng chuẩn 94 - 95% so với Real 

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%', 399000, 'img/product/1.jpg', 1),
	(N'CONVERSE ĐEN CAO', N'- Converse 1970 được lấy cảm hứng từ Converse Classic từ đường may cho đến sự đổi mới và trau chuốt trong đường khâu. Đôi giày này đã thổi một luồng khí mới vào thương hiệu giày Converse.

- Mũi giày của 1970s mỏng hơn mũi giày Classic. Phần mũi giày thon gọn của 1970s có thể là do lớp lót cao su màu đen cao hơn.

- Chất lượng hàng chuẩn 94 - 95% so với Real 

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%

', 399000, 'img/product/2.jpg', 1),
    (N'CONVERSE RUN', N'- Sản phẩm được "remix" từ Chuck và Runner khi 2 yếu tố thời trang được thể hiện xen kẽ: Upper canvas và đế Run Star zig-zag. 

- Đế giày Giày Converse Run Star Hike được thiết kế với dạng răng cưa to bản, giúp tăng độ bám một cách hiệu quả vừa tạo được điểm nhấn về phong cách và ấn tượng về thời trang. 

- Đế giày dày dặn cho bạn thỏa sức hack chiều cao và thêm tự tin xuống phố. Màu đen trắng tinh tế không kém phần thanh lịch sẽ phối hợp rất tốt với nhiều kiểu outfit hàng ngày. 

- Chất vải Canvas dày dặn với những thớ dệt bền bỉ được gia công tỉ mỉ giúp bạn yên tâm hơn trong mọi hoạt động.

- Chất lượng hàng chuẩn 97 - 98% so với Real ', 790000, 'img/product/3.jpg', 1),
    (N'CONVERSE CHUCK 70 AT-CX HIGH BLACK', N'- Phần thân giày được giữ theo form gốc đậm tính classic, đơn giản với kiểu dáng cổ cao trẻ trung cùng logo bên cạnh nhằm tôn lên phần đế độc đáo. 

- Lưỡi gà cao ráo, toát lên vẻ nổi bật ôm trọn lấy chân người dùng. 

- Phần đế giày được đôn lên cao với công nghệ bọt CX FOAM INSOLE nhẹ nhàng giúp hấp thụ tác động và hỗ trợ bạn suốt cả ngày dài. 

- Đế ngoài to, dày hơn có răng cưa ở thân và mũi tạo nên vẻ ngoài lạ mắt và không kém phần nổi bật

- Đế độn khoảng 4-5 cm.

- Chất lượng hàng chuẩn 97 - 98% so với Real ', 850000, 'img/product/4.jpg',  1),
	(N'CONVERSE TRẮNG THẤP', N'- Converse 1970 được lấy cảm hứng từ Converse Classic từ đường may cho đến sự đổi mới và trau chuốt trong đường khâu. Đôi giày này đã thổi một luồng khí mới vào thương hiệu giày Converse.

- Mũi giày của 1970s mỏng hơn mũi giày Classic. Phần mũi giày thon gọn của 1970s có thể là do lớp lót cao su màu đen cao hơn.

- Chất lượng hàng chuẩn 94 - 95% so với Real 

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%

', 500000, 'img/product/5.jpg', 1),
	(N'VANS SLIP ON CARO', N'VANS SLIP ON CARO', 550000, 'img/product/6.jpg', 2),
	(N'VANS OSK ĐEN - TRẮNG', N'VANS OSK ĐEN - TRẮNG', 470000, 'img/product/7.jpg', 2),
	(N'VANS VAULT OLD SKOOL', N'VANS VAULT OLD SKOOL LX - BLACK & WHITE', 790000, 'img/product/8.jpg', 2),
    (N'VANS CDG LIKEAUTH', N'VANS CDG LIKEAUTH', 790000, 'img/product/9.jpg', 2),
	(N'THE FEAR OF GOD', N'THE FEAR OF GOD X VANS SLIP-ON 47 WHITE BLACK', 790000, 'img/product/10.jpg', 2),
    (N'AF1 Gucci Style', N'- Chất lượng hàng chuẩn 97-98% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%

', 850000, 'img/product/11.jpg', 3),
	(N'AF1 FULL WHITE', N'- Chất lượng hàng chuẩn 97-98% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%', 790000, 'img/product/12.jpg', 3),
    (N'NIKE AIR FORCE 1 BLACK WHITE', N'- Chất lượng hàng chuẩn 97-98% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%', 790000, 'img/product/13.jpg', 3),
    (N'AIR FORCE 1 LV8 SNEAKERS
', N'- Chất lượng hàng chuẩn 97-98% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%', 790000, 'img/product/14.jpg', 3),
	(N'Sản phẩm yêu thích
AF1 BROOKLYN CREAM', N'- Chất lượng hàng chuẩn 97-98% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%

', 850000, 'img/product/15.jpg',  3),
	(N'ADIDAS YEEZY SLIDE \ BLACK
', N'- Chất lượng hàng chuẩn 97-98% so với Real 

- YZ SLIDE thì nên tăng 1 size , đủ size từ (4-11)

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%

- Chất liệu nhựa cao su Eva và được đúc thành nguyên khối. Đây là loại vật liệu có độ bền rất cao, trọng lượng nhẹ nên người dùng có thể sử dụng thoải mái mà không làm mất đi tính thẩm mỹ của đôi dép. Với cách sử dụng vật liệu như vậy sẽ giúp cho đôi chân của bạn cảm nhận được sự thoải mái, nhẹ nhàng mà không bị bí bách khi như đi giày cả ngày. 

- Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%', 379000, 'img/product/16.jpg',  4),
    (N'ADIDAS YEEZY SLIDE \ BROWN
', N'- Chất lượng hàng chuẩn 97-98% so với Real 

- YZ SLIDE thì nên tăng 1 size , đủ size từ (4-11)

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%

- Chất liệu nhựa cao su Eva và được đúc thành nguyên khối. Đây là loại vật liệu có độ bền rất cao, trọng lượng nhẹ nên người dùng có thể sử dụng thoải mái mà không làm mất đi tính thẩm mỹ của đôi dép. Với cách sử dụng vật liệu như vậy sẽ giúp cho đôi chân của bạn cảm nhận được sự thoải mái, nhẹ nhàng mà không bị bí bách khi như đi giày cả ngày. 

- Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%', 369000, 'img/product/17.jpg',  4),
	(N'EQT BOOST WHITE RED
', N'Description of EQT BOOST WHITE RED
', 850000, 'img/product/18.jpg',  4),
    (N'EQT BOOST BLACK WHITE', N'- Chất lượng hàng chuẩn 97-98% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%

', 850000, 'img/product/19.jpg',  4),
	(N'EQT BOOST FULL BLACK',N'- Chất lượng hàng chuẩn 97-98% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%

', 850000, 'img/product/20.jpg',  4),
    (N'MLB NEW YORK CHUNKY', N'- Chất lượng hàng chuẩn 97-98% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%

', 650000, 'img/product/21.jpg',  5),
	(N'MLB NY FULL BLACK', N'- Chất lượng hàng chuẩn 94-95% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế độn khoảng 5-6 cm 

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%

', 650000, 'img/product/22.jpg',  5),
    (N'MLB LA CHUNKY
', N'- Chất lượng hàng chuẩn 94-95% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế độn khoảng 5-6 cm 

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%', 650000, 'img/product/23.jpg',  5),
    (N'MLB TRẮNG GÓT VÀNG', N'- Chất lượng hàng chuẩn 94-95% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế độn khoảng 5-6 cm 

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%', 650000, 'img/product/24.jpg',  5),
    (N'MLB TRẮNG CHỮ NY ĐEN
', N'- Chất lượng hàng chuẩn 94-95% so với Real 

- Đa số chất liệu da thật , chọn lọc kĩ 

- Form chuẩn thiết kế từ đường kim mũi chỉ

- Đế độn khoảng 5-6 cm 

- Đế được làm từ TPU, chống mòn, cực bền

- Đủ size 36 37 38 39 40 41 42 43 

Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%', 650000, 'img/product/25.jpg',  5);	


-- Orders table
CREATE TABLE Orders (
    ID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT,
	Name NVARCHAR(255) ,
	phonenumber nvarchar(20),
    Address NVARCHAR(255),
    OrderDate DATE,
    TotalAmount INT DEFAULT 0,
    FOREIGN KEY (UserID) REFERENCES Users(ID)
);


-- OrderItems table
CREATE TABLE OrderItems (
    ID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(ID),
    FOREIGN KEY (ProductID) REFERENCES Products(ID)
);

