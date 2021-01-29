-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 28, 2021 lúc 03:56 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'hihi1', 'hihiabc', '123456'),
(9, 'hihi2', 'abc', '123456'),
(10, 'def', 'def', '123852'),
(12, 'Administrator', 'admin', 'admin'),
(13, 'vyho', 'vyho', '1d2dd3624a66f081aeba77f9426dbc40'),
(14, 'binhho', 'binhho', '08413b9c876b4976053e6c3300708141'),
(15, 'nganguyen', 'nganguyen', '0f38a6d29c7e4c2053e30bd0e03c1c7f');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizza', 'Food_Category_790.jpg', 'Yes', 'Yes'),
(5, 'Burger', 'Food_Category_344.jpg', 'Yes', 'Yes'),
(10, 'Salad', 'Food_Category_492.jpg', 'Yes', 'Yes'),
(11, 'Noddle', 'Food_Category_600.jpg', 'Yes', 'Yes'),
(12, 'Meal Prep', 'Food_Category_166.jpeg', 'Yes', 'Yes'),
(13, 'Rice', 'Food_Category_665.jpg', 'Yes', 'Yes');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(3, 'Dumplings Specials', 'Chicken Dumpling with herbs from Mountains', '5.00', 'Food-Name-3649.jpg', 6, 'Yes', 'Yes'),
(4, 'Best Burger', 'Burger with Ham, Pineapple and lots of Cheese.', '4.00', 'Food-Name-6340.jpg', 5, 'Yes', 'Yes'),
(7, 'Mixed Pizza', 'Pizza with chicken, Ham, Buff, Mushroom and Vegetables', '10.00', 'Food-Name-7833.jpg', 4, 'Yes', 'Yes'),
(9, 'Salad', 'A salad is a dish consisting of pieces of food in a mixture', '20.00', 'Food-Name-5538.png', 10, 'Yes', 'Yes'),
(10, 'Malay Veg Curry & Rice', 'Selection of organic seasonal veg slow-cooked in a tomato-based Malay curry, accompanied by rice.', '30.00', 'Food-Name-6476.jpg', 13, 'Yes', 'Yes'),
(11, 'Chickpea kofta korma', 'Turkey is one of the healthiest meats you can eat as it is rich in protein', '50.00', 'Food-Name-7517.jpg', 13, 'Yes', 'Yes'),
(12, 'Noddle', 'Noodles are a type of staple food made from some type of unleavened', '10.00', 'Food-Name-6592.jpg', 11, 'Yes', 'Yes'),
(13, 'Pizza cheese', 'Pizza cheese encompasses several varieties and types of cheeses and dairy products that are designed and manufactured', '20.00', 'Food-Name-5147.jpg', 4, 'Yes', 'Yes'),
(14, 'Rice', 'The comfort dish of Chinese food. Get the recipe from Delish. Risotto Rice - Delish.com. Parker', '15.00', 'Food-Name-6820.jpg', 13, 'Yes', 'Yes'),
(15, ' Rice recipes', 'Fermented foods such as kimchi help to promote good gut bacteria', '15.00', 'Food-Name-3787.jpg', 13, 'Yes', 'Yes'),
(16, 'Burger cheese', 'Hamburgers in fast food restaurants are usually grilled on a flat-top', '8.00', 'Food-Name-7080.jpg', 5, 'Yes', 'Yes'),
(17, ' Best Burger Recipes', 'These best hamburger recipes include variations on the classic cheese burger', '15.00', 'Food-Name-4234.jpg', 5, 'Yes', 'Yes'),
(18, 'Salad recipes', 'This salad combines sweet carrots with the liquorice bite of a slightly acidic', '10.00', 'Food-Name-7950.png', 10, 'Yes', 'Yes'),
(19, 'Meal Prep', 'This easy vegan dish also makes great leftover lunches', '20.00', 'Food-Name-1614.jpg', 12, 'Yes', 'Yes'),
(20, 'Noddle new', 'Noodles are a type of staple food made from some type of unleavened ', '15.00', 'Food-Name-9055.png', 11, 'Yes', 'Yes'),
(21, 'Meal Prep', 'Sit, stand, sip, share and shake anytime at MEET. Restaurant ... This is a culinary experience that ......', '15.00', 'Food-Name-4498.jpg', 12, 'Yes', 'Yes'),
(22, 'Chicken best', 'dfgdsfg', '5.00', 'Food-Name-4645.jpg', 12, 'Yes', 'Yes'),
(24, 'Salad best 1', 'This salad combines sweet carrots with the liquorice bite of a slightly acidic', '35.00', 'Food-Name-8561.jpg', 10, 'Yes', 'Yes');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(1, 'Sadeko Momo', '6.00', 3, '18.00', '2021-01-15 03:49:48', 'Cancelled', 'nguyen van B', '0136975465465', 'nguyenvanb@gmail.com', 'nga ba hue , da nang'),
(2, 'Best Burger', '4.00', 2, '8.00', '2021-01-15 03:52:43', 'Delivered', 'nguyen van C', '032465154', 'nguyenvanc@gmail.com', 'mai dang chon , da nang'),
(3, 'Mixed Pizza', '10.00', 2, '20.00', '2021-01-16 04:07:17', 'On Delivery', 'nguyen van a', '012369852147', 'nguyenvana@gmail.com', 'Trần hưng đạo , đà nẵng'),
(4, 'Dumplings Specials', '5.00', 2, '10.00', '2021-01-28 08:31:25', 'Ordered', 'hồ thị thanh bình', '01234689562', 'thanhbinhh105@gmail.com', ' đường Bình Kì , phường hòa quý '),
(5, 'Pizza cheese', '20.00', 1, '20.00', '2021-01-28 02:23:54', 'On Delivery', 'vyyy', '0123698547', 'vyhho@gmai.com', 'ngo quyen da nang');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
