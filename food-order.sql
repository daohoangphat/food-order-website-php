-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 10, 2025 lúc 07:16 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `food-order`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(24, 'Hoàng Phát', 'Phát', '202cb962ac59075b964b07152d234b70'),
(25, 'Thanh Phong', 'Phong', '202cb962ac59075b964b07152d234b70'),
(26, 'admin', 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(1, 'Pizza', 'Food_Category_790.jpg', 'Yes', 'Yes'),
(2, 'Burger', 'Food_Category_344.jpg', 'Yes', 'Yes'),
(3, 'MoMo', 'Food_Category_77.jpg', 'Yes', 'Yes'),
(20, 'Drink', 'Food_Category_987.jpg', 'Yes', 'Yes'),
(22, 'Potato', 'Food_Category_786.jpg', 'Yes', 'Yes'),
(24, 'Chicken', 'Food_Category_939.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(1, 'Bánh bao đặc biệt', 'Bánh bao gà với thảo mộc từ núi.', 5.00, 'Food-Name-3748.jpg', 3, 'Yes', 'Yes'),
(3, 'Pizza rau củ', 'Với lớp nhân là rau, củ bổ sung đầy đủ chất sơ rất thíc hợp cho người ăn kiêng.', 5.00, 'Food-Name-8298.jpg', 1, 'Yes', 'Yes'),
(4, 'Sadeko Momo', 'Mang đến hương vị cay cho mùa đông giá lạnh.', 5.00, 'Food-Name-7387.jpg', 3, 'Yes', 'Yes'),
(12, 'Buger hải sản', 'Với lớp nhân là thịt tôm tươi hòa quyện với nước sốt béo ngậy.', 6.00, 'Food-Name-4738.jpg', 2, 'Yes', 'Yes'),
(14, 'Buger gà', 'Lớp nhân gà giòn cay sánh quyện cùng với lớp bánh mềm và ngọt.', 6.00, 'Food-Name-5176.png', 2, 'Yes', 'Yes'),
(15, 'Buger bò thường', 'Miếng bò được ướp với nước sốt đặc biệt nằm gói trọn trongmột chiếc bánh Buger thơm lừng.', 4.00, 'Food-Name-1927.jpg', 2, 'Yes', 'Yes'),
(16, 'Pizza phô mai', 'Với lớp phô mai béo ngậy sẽ tạo nên hương vị đặc trưng cho chiếc bánh Pizza.', 5.00, 'Food-Name-2583.jpg', 1, 'Yes', 'Yes'),
(17, 'Pizza hải sản', 'Chiếc pizza mang đậm hương vị hải sản từ tôm và mực rất đáng để trải nghiệm.', 7.00, 'Food-Name-6337.png', 1, 'Yes', 'Yes'),
(18, 'Khoai tây chiên sốt phô mai', 'Khoai giòn được phủ cùng với lớp sốt phô mai béo ngậy giúp tăng thêm hương vị.', 4.00, 'Food-Name-4480.jpg', 22, 'Yes', 'Yes'),
(19, 'Khoai tây chiên', 'Khoai tây chiên theo cách truyền thống giúp giữ lại hương vị đặc trưng vốn có.', 3.00, 'Food-Name-9506.jpg', 22, 'Yes', 'No'),
(20, 'Trà tắc', 'Một nước uống cung cấp vitamin, bổ sung sức khỏe.', 2.00, 'Food-Name-1549.jpg', 20, 'Yes', 'Yes'),
(21, 'Trà sữa', 'Một thức uống yêu thích của giới trẻ.', 2.00, 'Food-Name-9605.jpg', 20, 'Yes', 'Yes'),
(22, 'Nước ngọt', 'Đa dạng các loại nước ngọt phổ biến như: Coca, Fanta, Sprite,...', 2.00, 'Food-Name-6373.jpg', 20, 'Yes', 'Yes'),
(23, 'Gà gán truyền thống', 'Gà rán với lớp bột phủ giòn bên ngoài.', 4.00, 'Food-Name-1765.jpg', 24, 'Yes', 'Yes'),
(24, 'Gà rán sốt cay', 'Phủ bên ngoài lớp gà rán là nước sốt cay tê được chế biến theo công thức đặc biệt.', 5.00, 'Food-Name-8477.jpg', 24, 'Yes', 'Yes'),
(30, 'Buger bò thượng hạng', 'Lớp vỏ buger đen mịn cùng với nhân bên trong là phô mai Mozarella, thịt Bacon xông khối và đặt biệt hơn hết là một miếng bò tảng Úc tươi.', 7.00, 'Food-Name-5480.jpg', 2, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(9, 'Buger hải sản', 6.00, 1, 6.00, '2025-04-09 06:49:58', 'Ordered', 'Đào Phát', '123412', '123@gmail.com', '19 lvp'),
(10, 'Buger hải sản', 6.00, 1, 6.00, '2025-04-09 01:34:47', 'Ordered', 'Đào Phát', '123412', 'daohoangphat0105@gmail.com', '19 lvp');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
