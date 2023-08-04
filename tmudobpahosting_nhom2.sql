-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 16, 2022 lúc 07:12 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tmudobpahosting_nhom2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `price_total` float NOT NULL,
  `name_user` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) DEFAULT 1 COMMENT '1 là đang giao,2 là giao thất bại,3 là giao thành công',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `price_total`, `name_user`, `phone`, `address`, `id_user`, `status`, `created_at`) VALUES
(9, 23600000, 'thanh nguyen', 343112464, 'hanoi', 3, 3, '2022-12-05 11:23:53'),
(10, 23344000, 'thanh nguyen', 343112464, 'hanoi', 3, 2, '2022-12-05 11:23:53'),
(11, 19200000, 'fff', 343112464, 'hanoi', 3, 1, '2022-12-05 11:23:53'),
(12, 21600000, 'thanh nguyen', 343112464, 'hanoi', 3, 3, '2022-12-05 11:23:53'),
(13, 3100000, 'Vũ', 356277440, '18 phố kiều mai số 2, Trịnh văn bô trường fpt polytechnic', 3, 2, '2022-12-05 11:23:53'),
(14, 8000000, 'duongss', 356277440, '18 phố kiều mai số 2, Trịnh văn bô trường fpt polytechnic', 3, 3, '2022-12-05 11:23:53'),
(15, 8000000, 'Vũ', 356277440, '18 phố kiều mai số 2, Trịnh văn bô trường fpt polytechnic', 1, 1, '2022-12-05 11:23:53'),
(16, 8400000, 'Vũ', 356277440, '18 phố kiều mai số 2, Trịnh văn bô trường fpt polytechnic', 1, 2, '2022-12-05 11:23:53'),
(17, 8000000, 'Vũ', 356277440, '18 phố kiều mai số 2, Trịnh văn bô trường fpt polytechnic', 7, 1, '2022-12-05 11:23:53'),
(18, 8000000, 'fdf', 33232, 'dsdsds', 1, 1, '2022-12-05 11:23:53'),
(19, 26000000, 'Vũ', 356277440, '18 phố kiều mai số 2, Trịnh văn bô trường fpt polytechnic', 3, 1, '2022-12-05 11:23:53'),
(20, 2800000, 'Vũ', 356277440, '18 phố kiều mai số 2, Trịnh văn bô trường fpt polytechnic', 7, 1, '2022-12-05 11:23:53'),
(21, 2800000, 'Vũ', 356277440, '18 phố kiều mai số 2, Trịnh văn bô trường fpt polytechnic', 3, 1, '2022-12-05 11:26:11'),
(22, 8400000, 'thanh nguyen', 343112464, 'hanoi', 3, 1, '2022-12-07 16:54:25'),
(23, 8400000, 'thanh nguyen', 343112464, 'hanoi', 3, 1, '2022-12-07 16:55:43'),
(24, 56800000, 'thanh nguyen', 343112464, 'hanoi', 3, 1, '2022-12-07 18:04:54'),
(25, 8000000, 'Vũ', 356277440, '18 phố kiều mai số 2, Trịnh văn bô trường fpt polytechnic', 1, 1, '2022-12-15 17:42:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_total` float NOT NULL,
  `price` int(11) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_products`, `id_bill`, `quantity`, `price_total`, `price`, `type_name`) VALUES
(7, 25, 9, 2, 5600000, 2800000, 'nhỏ'),
(8, 24, 10, 2, 12000000, 6000000, 'nhỏ'),
(9, 24, 11, 2, 12000000, 6000000, 'nhỏ'),
(10, 27, 11, 2, 7200000, 3600000, 'nhỏ'),
(11, 25, 12, 2, 5600000, 2800000, 'nhỏ'),
(12, 26, 12, 2, 16000000, 8000000, 'nhỏ'),
(13, 66, 13, 3, 300000, 100000, 'nhỏ'),
(14, 25, 13, 1, 2800000, 2800000, 'nhỏ'),
(15, 26, 14, 1, 8000000, 8000000, 'nhỏ'),
(16, 26, 15, 1, 8000000, 8000000, 'nhỏ'),
(17, 25, 16, 3, 8400000, 2800000, 'nhỏ'),
(18, 26, 17, 1, 8000000, 8000000, 'nhỏ'),
(19, 26, 18, 1, 8000000, 8000000, 'nhỏ'),
(20, 25, 19, 2, 5600000, 2800000, 'nhỏ'),
(21, 31, 19, 3, 20400000, 6800000, 'nhỏ'),
(22, 25, 20, 1, 2800000, 2800000, 'nhỏ'),
(23, 25, 21, 1, 2800000, 2800000, 'nhỏ'),
(24, 25, 23, 3, 8400000, 2800000, 'nhỏ'),
(25, 24, 24, 8, 48000000, 6000000, 'lớn'),
(26, 25, 24, 1, 2800000, 2800000, 'vừa'),
(27, 24, 24, 1, 6000000, 6000000, 'nhỏ'),
(28, 26, 25, 1, 8000000, 8000000, 'Vừa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`) VALUES
(6, 'Nutricare', '1669777102Untitled.png'),
(7, 'Vinamilk', '1669777132Untitled.png'),
(8, 'Nutifood', '1669776777Untitled.png'),
(9, 'TH True Milk', '1669776830Untitled.png'),
(10, 'Aptamil', '1669776907Untitled.png'),
(11, 'Sữa NAN', '1669776953Untitled.png'),
(12, 'Sữa Friso', '1669777049Untitled.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'sữa cho trẻ em'),
(4, 'sữa cho những người mẹ'),
(5, 'sữa cho người lớn'),
(10, 'sữa cho tất cả mọi người');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `description`, `id_user`, `id_pro`, `created_at`) VALUES
(18, 'new', 3, 25, '2022-12-02 10:03:04'),
(19, 'new', 1, 26, '2022-12-02 10:03:36'),
(21, 'đá\r\n', 1, 25, '2022-12-04 08:19:17'),
(23, 'đẹp quá', 10, 24, '2022-12-05 09:46:47'),
(25, 'new', 3, 29, '2022-12-05 11:18:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `view` int(11) DEFAULT 0,
  `sold` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `images`, `quantity`, `brand_id`, `category_id`, `view`, `sold`) VALUES
(24, 'SMARTA LF 3+ – EN', 6000000, '<p>Sữa mẹ là thức ăn tốt nhất cho sức khỏe và sự phát triển toàn diện của trẻ nhỏ.</p><p>– HỖ TRỢ GIÚP GIẢM TIÊU CHẢY: Bổ sung đạm thủy phân không chứa Lactose cùng chất béo MCT mạch trung bình dễ hấp thu và không gây dị ứng, cải thiện tình trạng tiêu chảy do bất dung nạp Lactose và dị ứng thức ăn, giúp trẻ nhanh chóng phục hồi sức khỏe.<br>– HỖ TRỢ TIÊU HOÁ, HẤP THU: Đặc biệt bổ sung men vi khuẩn (Lactobacillus, Bifidobacterrium) cùng Hệ chất xơ (Synergy 1 &amp; Frutafi IQ) giúp gia tăng vi khuẩn có lợi, nuôi dưỡng hệ tiêu hóa, giảm đầy bụng, táo bón và các Vitamin nhóm B, Magie, Kẽm kích thích trẻ ăn ngon miệng.<br>– HỖ TRỢ PHÁT TRIỂN NÃO BỘ VÀ THỂ CHẤT: Công thức IQ Max bố sung DHA, Omega 3, Omega 6, Taurine, giúp hỗ trợ phát triển não bộ và thị giác. Hệ dưỡng chất Canxi, Vitamin D3, Magie, Phốt pho giúp bé phát triển hệ xương, tăng chiều cao. Vitamin, khoáng chất giúp bé phát triển thể chất.<br>– HỖ TRỢ TĂNG CƯỜNG MIỄN DỊCH: Bổ sung Nucleotides giúp tăng cường sức đề kháng tự nhiên, phòng các bệnh nhiễm khuẩn. Hệ Antioxidant gồm các Vitamin A, C, E và Selen giúp bảo vệ tế bào, tăng khả năng miễn dịch cho trẻ.</p>', '16699710232c9d617d183f04650a42a625e6abbfb5.jpg', 10, 12, 1, 116, 0),
(25, 'METACARE 5 – EN', 2800000, '<p><strong>Sữa mẹ là thức ăn tốt nhất cho sức khỏe và sự phát triển toàn diện của trẻ nhỏ</strong></p><p>– HỖ TRỢ GIÚP XƯƠNG CHẮC KHỎE, CAO LỚN: Giàu dinh dưỡng &amp; chất đạm, bổ sung Vitamin &amp; Khoáng chất đáp ứng theo sinh lý lứa tuổi hỗ trợ giúp trẻ tăng trưởng tốt. Tăng 65% Canxi*, đột phá với Canxi từ tảo đỏ – là Canxi hữu cơ chiết xuất từ tảo biến Ireland quý hiếm có giá trị cao &amp; hấp thu nhanh hơn tới 3 lần so với canxi thông thường: Vitamin K2 (MK7) &amp; Vitamin D3 tăng cường gắn kết canxi tối đa vào XƯơng, giảm lắng đọng, dự thìa canxi, tránh nóng trong, táo bón; Kết hợp độc đáo với Tinh chất dầu Olive giúp hòa tan và hấp thụ tốt hơn các vitamin tan trong dầu Giàu Magiê &amp; bố Sung Phốt pho với tỷ lệ Ca/P phù hợp.</p>', '1669737333Untitled.png', 93, 6, 1, 22, 2),
(26, 'SMARTA IMMU 3+ – EN', 8000000, '<p>Sữa mẹ là thức ăn tốt nhất cho sức khỏe và sự phát triển toàn diện của trẻ nhỏ.</p><p>– HỖ TRỢ TĂNG CƯỜNG MIỄN DỊCH: Bổ sung Sữa non (Colostrum) hàm lượng cao cùng 5 loại Nucleotides chứa nhiều kháng thể giúp tăng cường sức đề kháng tự nhiên, phòng các bệnh nhiễm khuẩn. Hệ Antioxidant gồm các Vitamin A, C, E và Selen cùng Lactoferrin giúp bảo vệ tế bào, tăng khả năng miễn dịch cho trẻ.<br>– HỖ TRỢ PHÁT TRIỂN NÃO BỘ VÀ THỊ GIÁC: Công thức IQ Max bổ sung DHA, Omega 3, Omega 6, Choline, Lutein, giúp hỗ trợ phát triển não bộ và thị giác, tăng khả năng ghi nhớ và học hỏi.<br>– HỖ TRỢ PHÁT TRIỂN THỂ CHẤT, CHIỀU CAO: Hệ dưỡng chất Canxi, Vitamin D3, Magie, Phốt pho, giúp bé phát triển hệ xương, Vitamin, khoáng chất đáp ứng nhu cầu phát triển thể chất.<br>– HỖ TRỢ TIÊU HOÁ, KÍCH THÍCH ĂN NGON: Hệ chất xơ Synergy 1 &amp; Frutafit IQ và các Vitamin nhóm B nuôi dưỡng hệ tiêu hoá, kích thích ăn ngon, giảm đầy bụng, táo bón. Đặc biệt bổ sung Nucleotides, Vitamin A, Kẽm có hàm lượng cao giúp hỗ trợ miễn dịch, hệ tiêu hóa, giúp tăng cường hấp thu dinh dưỡng.</p>', '1669737434Untitled.png', 72, 6, 1, 65, 0),
(27, 'SMARTA GROW+ – EN', 3600000, '<p>Sữa mẹ là thức ăn tốt nhất cho sức khỏe và sự phát triển toàn diện của trẻ nhỏ.</p><p>– CANXI NANO dễ hấp thu bởi kích thước siêu nhỏ hơn 100 lần so với Canxi thông thường, cùng với tỷ lệ Ca/P phù hợp theo khuyến nghị của Viện Dinh dưỡng Quốc gia giúp cơ thể hấp thu Canxi tốt hơn.<br>– VITAMIN D3 dưỡng chất cần thiết giúp Canxi hấp thu từ ruột vào máu.<br>– VITAMIN K2 dưỡng chất quan trọng giúp xương hấp thu được nhiều Canxi hơn, tránh dư thừa lắng đọng Canxi trong máu gây nóng trong, táo bón.</p>', '1669737506Untitled.png', 33, 6, 1, 29, 0),
(28, 'SMARTA GROW – EN', 36000, '<h3>Dung tích: 110ml, 180ml</h3>', '1669737586Untitled.png', 679, 6, 1, 8, 0),
(29, 'SỮA BỘT SMARTA MOM – EN', 60000000, '<p>– 7.2 TỶ LỢI KHUẨN: Hệ men vi sinh kép Bifidobacterium BB12 &amp; Lactobacillus La5 kết hợp với Chất xơ tự nhiên giúp hỗ trợ hệ tiêu hoá, tăng khả năng hấp thu các khoáng chất, đồng thời giúp nhuận tràng, giảm tình trạng táo bón thai kỳ.<br>– ÍT NGỌT, GI THẤP: Độc đáo với công thức ít ngọt, sử dụng hệ đường ăn kiêng Isomalt, Maltitol, Palatinose được EFSA Châu Âu chứng minh có chỉ số đường huyết (GI) thấp, giúp kiểm soát cân nặng tốt hơn, giảm nguy cơ mắc bệnh tiểu đường thai kỳ.<br>– DẦU OLIVE CAO CẤP: Giảm chất béo thông thường, bổ sung bằng tinh chất dầu Olive dễ hấp thu, cùng với chất xơ hòa tan giúp hỗ trợ hệ tiêu hóa.<br>– 27 VITAMIN &amp; KHOÁNG CHẤT: Đầy đủ dưỡng chất thiết yếu như Sắt, Kẽm, Magie và các dưỡng chất oxy hóa (Vitamin C, E, Selen),… giúp nâng cao sức đề kháng, giúp thai kỳ khỏe mạnh, giảm các dấu hiệu ốm nghén &amp; tăng cường chất lượng dinh dưỡng của sữa mẹ sau sinh.</p>', '1669737693Untitled.png', 55, 6, 4, 3, 0),
(30, 'METAMOM', 4800000, '<p>– HỖ TRỢ PHÁT TRIỂN HỆ XƯƠNG: Đột phá với bộ 3: Canxi tự nhiên từ tảo, Vitamin K2,Olive giúp tăng cường hấp thu, gắn kết canxi tối đa vào xương, giảm dư thừa, lắng đọng, tránh táo bón. Giàu Vitamin D3, Tỉ lệ Ca/P phù hợp với khuyến nghị của Viện dinh dưỡng Quốc Gia. Đảm bảo nhu cầu gia tăng cho mẹ, giảm các nguy cơ đau lưng, chuột rút. Đồng thời giúp phát triển hệ xương của bé cứng cáp, tránh còi xương sau này.</p><p>– HỖ TRỢ TĂNG SỨC ĐỀ KHÁNG, HẤP THU TỐT: Độc đáo với công thức ít ngọt, giảm đường, sử dụng hệ ngọt đường tiên tiến Isomalt, Maltitol, Palatinose, được EFSA châu Âu chứng minh có chỉ số đường huyết thấp,giúp giảm nguy cơ mắc tiểu đường thai kỳ. Đầy đủ dưỡng chất thiết yếu với Sắt, Kẽm, Hệ chất SAT chống oxy hóa (Vitamin E, C, Selen) giúp nâng cao sức đề kháng. Magie, Vitamin B6 giúp giảm căng thắng &amp; làm giảm các dấu hiệu nghén của mẹ.</p><p>– HỖ TRỢ GIÚP PHÁT TRIỂN NÃO BỘ: Cung cấp Axit Folic đáp ứng 100% khuyến nghị Bộ Y tế giúp giảm nguy cơ khuyết tật ống thần kinh, hỗ trợ phát triển chức năng của hệ thần kinh và nhận thức của bào thai.</p>', '1669737780Untitled.png', 55, 6, 4, 3, 0),
(31, 'NUTRICARE LIVER – EN', 6800000, '<ul><li><strong>HỆ LIVE PROTM ĐỘC QUYỀN BẢO VỆ TẾ BÀO GAN: </strong>Hạn chế gan nhiễm mỡ, viêm gan, xơ gan.<ul><li>GIẢI ĐỘC GAN: Đạm Whey chứa bộ đôi arginine &amp; Methionine.</li><li>GIẢM ÁP LỰC GAN:&nbsp; Đạm mạch nhánh BCAA &amp; Chất béo mạch trung bình (MCT).</li><li>GIẢM TÍCH LŨY MỠ Ở GAN: Dưỡng chất Choline.</li></ul></li><li><strong>HỖ TRỢ CẢI THIỆN CHỨC NĂNG GAN: </strong>Đặc biệt bổ sung thêm Selen, Kẽm &amp; Vitamin nhóm B thường thiếu hụt ở người bệnh gan do rượu bia, giúp cải thiện chức năng gan.</li><li><strong>TĂNG CƯỜNG SỨC KHỎE: </strong>Cao năng lượng, giàu Đạm, 27 vitamin và khoáng chất.</li><li><strong>DỄ TIÊU HÓA, ĂN NGON MIỆNG: </strong>FOS/Inulin và không chứa Lactose.</li><li><strong>TĂNG CƯỜNG MIỄN DỊCH: </strong>Sữa non Colostrum.</li><li><strong>TỐT CHO TIM MẠCH, XƯƠNG KHỚP:</strong> MUFA, PUFA, Canxi, D3.</li></ul>', '1669737869Untitled.png', 6, 6, 5, 8, 0),
(32, 'GLUCARE GOLD – EN', 3360000, '<ul><li>Hệ đường tiên tiến Palatinose, Isomalt, Maltitol có chỉ số GI thấp kết hợp Crôm được EFSA Châu Âu chứng nhận <strong>giúp ổn định đường huyết.</strong></li><li>Bổ sung 28 vi chất với hệ Antioxidants (A, C, E &amp; Selen) giúp<strong> giảm căng thẳng mệt mỏi, tăng cường sức khỏe</strong>.</li><li>Giàu chất xơ hòa tan (FOS/Inulin) giúp<strong> dễ tiêu hóa</strong>.</li><li>Giàu MUFA, PUFA <strong>tốt cho tim mạch</strong>, <strong>giảm các biến chứng do tiểu đường</strong>.</li></ul>', '1669737943Untitled.png', 2244, 6, 5, 3, 0),
(39, 'Sữa bột Vinamilk Optimum Gold', 351000, '<p>Optimum Gold 4 với công thức dễ tiêu hóa, là nền tảng cho việc hấp thu các dưỡng chất thiết yếu cho trẻ từ 2 - 6 tuổi, giúp tăng cường sức đề kháng, phát triển não bộ và thể chất.</p><p>Optimum Gold 4 với công thức dễ tiêu hóa, là nền tảng cho việc hấp thu các dưỡng chất thiết yếu cho trẻ từ 2 - 6 tuổi, giúp tăng cường sức đề kháng, phát triển não bộ và thể chất.</p><p>Tính năng sản phẩm</p><p>1. Tăng khả năng hấp thu</p><p>+ HMO (2’- FL)</p><p>Là prebiotic có cấu trúc tương tự như dưỡng chất được tìm thấy trong sữa mẹ, giúp hình thành hệ vi khuẩn có lợi, cùng với chất xơ hòa tan FOS giúp hỗ trợ hệ tiêu hóa khỏe mạnh.</p><p>+ Đạm Whey giàu Alpha-lactalbumin và Probiotic BB-12 và LGG</p><p>Dễ tiêu hóa và giúp tăng vi khuẩn có lợi và khả năng hấp thu các dưỡng chất.</p><p>2. Hỗ trợ phát triển não bộ</p><p>+ Bổ sung hơn 25% DHA từ tảo (1), hỗ trợ phát triển não bộ và giúp đáp ứng hàm lượng theo khuyến nghị hằng ngày của các chuyên gia y tế Thế Giới FAO/WHO (2).</p><p>3. Tăng sức đề kháng &amp; chiều cao</p><p>+ Các vitamin, khoáng chất thiết yếu như A, D3, C, Kẽm, Selen và hỗn hợp Nucleotid giúp tăng cường sức đề kháng, hỗ trợ hệ miễn dịch của trẻ.</p><p>+ Giàu Vitamin D và Canxi với tỉ lệ Canxi &amp; Phốt pho (Ca:P) thích hợp giúp trẻ phát triển tốt hệ xương và chiều cao.</p>', '1669782820r.jpg', 44, 7, 1, 8, 0),
(43, 'Nước uống sữa trái cây TH true JUICE milk TOPKID Cam Tự Nhiên', 29000, '<p>Nước uống sữa trái cây TH true JUICE milk TOPKID Cam tự nhiên kết hợp sữa tươi sạch của trang trại TH cùng với trái cây tự nhiên được nhập khẩu từ các vùng nguyên liệu chất lượng cao giúp cung cấp vitamin và khoáng chất cần thiết cho cơ thể. Ngoài ra sản phẩm được bổ sung Vitamin nhóm B (B6, B12) và Acid Folic trong công thức TOPKID giúp hỗ trợ sự phát triển não bộ và chiều cao của trẻ.</p>', '1669784532r.jpg', 32, 9, 1, 2, 0),
(55, 'Sữa tươi tiệt trùng có đường Vinamilk 100% ', 7000, '<p>- Sữa tươi 100% dạng bịch được làm từ 100% sữa bò tươi nguyên chất từ hệ thống trang trại chuẩn Quốc tế lớn nhất Châu Á<br>- Đàn bò được chăm sóc tốt, nên luôn vui tươi, cho sữa tươi ngon, chất lượng<br>- Giúp cường đề kháng nhờ bổ sung Vitamin A, D3 và Selen</p>', '1669963752Untitled.png', 4367, 7, 1, 1, 0),
(65, 'Chuyển đến phần đầu của thư viện hình ảnh Sữa Imperial Mom XO 400g', 285000, '<h3><strong>Đặc điểm nổi bật của sản phẩm&nbsp;</strong></h3><p><i><strong>Cho bé hệ khung xương vững chắc và chống loãng xương cho mẹ</strong></i></p><p>- Sau khi sinh, xương của người mẹ trở nên yếu đi. Vì vậy, việc cung cấp hàm lượng canxi phù hợp là điều &nbsp;rất cần thiết. Với hàm lượng canxi có trong sữa Imperial Mom XO sẽ giúp cho xương của người mẹ trở nên chắc khỏe, đồng thời giúp cho cấu trúc xương của bé phát triển tốt hơn.</p><p>- Tăng cường hợp chất Casein-phoshorpeptide, <a href=\"https://bibomart.com.vn/tu-thuoc-gia-dinh.html\">Vitamin</a> D và khoáng chất giúp tăng cường khả năng hấp thu canxi hiệu quả nhất.</p><p><i><strong>Điều hòa hấp thụ, chống táo bón</strong></i></p><p>Hỗn hợp đường Fructose-Oligosaccharide (FOS) có tác dụng thúc đẩy sự phát triển của hệ vi sinh vật có lợi và hạn chế khả năng hấp thu thức ăn của các vi sinh vật có hại trong đường ruột, từ đó giúp mẹ tăng cường khả năng hấp thu và tiêu hóa, chống lại hiện tượng táo bón - một triệu chứng thường hay xảy ra đối với phụ nữ trong giai đoạn mang thai.</p><p><i><strong>Ngăn ngừa thiếu máu</strong></i></p><p>Trong suốt thời kỳ mang thai, thai nhi phát triển nhờ vào chất dinh dưỡng từ người mẹ cung cấp qua dẫn truyền máu. Do vậy, trong giai đoạn mang thai, người mẹ rất dễ bị thiếu máu. XO Mom bổ sung sắt kết hợp cùng lượng Axit Folic được cung cấp theo tiêu chuẩn quốc tế sẽ giúp phòng ngừa thiếu máu ở thai phụ, đồng thời phát triển hoàn chỉnh hệ thần kinh, chống dị tật ống thần kinh cho thai nhi.</p>', '1669966626sua-imperial-mom-xo-400g-100917.jpg', 28, 10, 4, 2, 0),
(66, 'Túi Ngũ Cốc Dinh Dưỡng Värna Diabetes 400g', 100000, '<p>THÔNG TIN</p><p><strong>Lợi ích sản phẩm:</strong></p><p><strong>ỔN ĐỊNH ĐƯỜNG HUYẾT</strong></p><p>Isomaltulose cùng Chất xơ giúp ổn định đường huyết hiệu quả<br><strong>TỐT CHO TIM MẠCH</strong></p><p>MUFA, PUFA, VITAMIN k2 giúp giảm cholesterol trong máu, ổn định huyết áp và bảo vệ tim mạch<br><strong>TĂNG CƯỜNG ĐỀ KHÁNG</strong></p><p>Đông trùng hạ thảo cùng Kẽm, Vitamin A, Vitamin E, Vitamin C giúp tăng cường hệ miễn dịch<br><strong>HỖ TRỢ TIÊU HOÁ</strong></p><p>Chất xơ giúp hỗ trợ đường ruột khoẻ mạnh</p><p><strong>Thành phần:</strong></p><p>Ngũ cốc (27%) (bột mì, bột đậu nành, xi-rô glucose, bột bắp, chiết xuất đại mạch, đường sucrose), chất béo thực vật (dầu thực vật, xi-rô glucose, đạm sữa, chiết xuất đại mạch), hỗn hợp đạm đậu nành và chất béo thực vật (đạm đậu nành, dầu palm, xi-rô glucose, đường sucrose), chất tạo ngọt tự nhiên erythritol, sữa bột tách béo, isomaltulose, chất xơ thực phẩm (FOS/ Inulin), vitamin và khoáng chất (tricalci phosphat, natri clorid, natri-L-ascorbat, menaquinon, retinyl acetat, cholecalciferol, DL-alpha tocopheryl acetat, kẽm oxyd), đông trùng hạ thảo (cordyceps), hương liệu tổng hợp dùng cho thực phẩm, chất tạo ngọt nhân tạo sucralose.<br>Sản phẩm chứa các nguyên liệu có nguồn gốc từ đại mạch, lúa mì, đậu nành, sữa.</p><p><strong>Đặc điểm nổi bật của sản phẩm:</strong></p><p>Ứng dụng<strong> tinh hoa khoa học dinh dưỡng Châu Âu</strong> cùng hơn 20 năm am hiểu sâu sắc thể trạng đặc thù của người bệnh đái tháo đường tiền đái tháo đường Việt Nam từ <strong>Chuyên gia dinh dưỡng Nutifood.</strong></p><p><strong>Ngũ cốc dinh dưỡng Värna Diabetes</strong> <strong>MỚI</strong> có chỉ số GI thấp với công thức đặc chế được kiểm chứng bởi <strong>Viện nghiên cứu dinh dưỡng Nutifood Thụy Điển - NNRIS</strong> chứa<strong> Đông trùng hạ thảo và 9 vitamin khoáng chất </strong>thiết yếu<strong> </strong>giúp <strong>tăng cường sức đề kháng </strong>kết hợp cùng <strong>isomaltulose</strong> và <strong>chất xơ </strong>giúp<strong> ổn định đường huyết hiệu quả.</strong></p><p><strong>Hướng dẫn sử dụng:</strong></p><p>Pha một gói 25g ngũ cốc dinh dưỡng với khoảng 130 – 150ml nước nóng, khuấy đều và dùng ngay.</p><p><strong>Độ&nbsp;tuổi sử dụng:</strong></p><p>Người trưởng thành</p><p><strong>Hạn sử dụng:</strong></p><p>12 tháng kể từ ngày sản xuất</p><p><strong>Nơi sản xuất:</strong></p><p>Việt Nam</p><p><br>&nbsp;</p>', '1669966785h1000-w1000.jpg', 12, 8, 5, 1, 0),
(67, 'Túi Ngũ Cốc Dinh Dưỡng Värna Complete 500g', 820000, '<p>THÔNG TIN</p><p><strong>Lợi ích sản phẩm:</strong></p><p><strong>TĂNG CƯỜNG ĐỀ KHÁNG</strong></p><p>Vitamin C, Kẽm, vitamin AE giúp tăng cường hệ miễn dịch<br><strong>HỆ XƯƠNG CHẮC KHOẺ</strong></p><p>Vitamin K2, Calcium, Vitamin D3 giúp ngăn ngừa loẵng xương hiệu quả<br><strong>HỖ TRỢ TIÊU HÓA</strong></p><p>Chất xơ hỗ trợ đường ruột khoẻ mạnh kết hợp với Vitamin nhóm B giúp hấp thu chất dinh dưỡng tốt hơn<br><strong>TỐT CHO TIM MACH&nbsp;</strong></p><p>Vitamin K2 giúp ngăn ngừa xơ vữa động mạch và bảo vệ tim mạch</p><p><strong>Thành phần:</strong></p><p>Chất béo thực vật (xi-rô glucose, dầu thực vật, đạm sữa, chiết xuất đại mạch), ngũ cốc (33%) (bột mì, bột mì nguyên cám, xi-rô glucose, chiết xuất đại mạch, bột gạo, đường sucrose, bột đậu nành, bột bắp), đường sucrose, chất xơ thực phẩm (FOS/ Inulin), vitamin và khoáng chất (tricalci phosphat, natri clorid, natri-L-ascorbat, niacinamid, calci-D-pantothenat, pyridoxin hydroclorid, thiamin mononitrat, menaquinon, retinyl acetat, cholecalciferol, DL-alpha tocopheryl acetat, kẽm oxyd), hương liệu tổng hợp dùng cho thực phẩm, tổ yến tinh chế (50 mg/100g).<br>Sản phẩm chứa các nguyên liệu có nguồn gốc từ đại mạch, lúa mì, đậu nành, sữa.</p><p><strong>Đặc điểm nổi bật của sản phẩm:</strong></p><p>Ứng dụng <strong>tinh hoa khoa học dinh dưỡng Châu Âu</strong> cùng hơn 20 năm am hiểu sâu sắc thể trạng đặc thù của người lớn người ăn uống kém tại Việt Nam từ<strong> Chuyên gia dinh dưỡng Nutifood.</strong></p><p><strong>Ngũ cốc dinh dưỡng Värna Complet</strong>e <strong>MỚI</strong> chứa <strong>Tổ yến tinh chế</strong> bổ dưỡng được kiểm chứng bởi <strong>Viện nghiên cứu dinh dưỡng Nutifood Thụy Điển - &nbsp;NNRIS </strong>cung cấp nguồn dinh dưỡng tuyệt vời từ<strong> ngũ cốc nguyên cám</strong> kết hợp cùng <strong>12 vitamin khoáng chất</strong> thiết yếu giúp duy trì<strong> hệ xương khỏe mạnh, hỗ trợ tiêu hóa</strong> và<strong> tăng cường sức đề kháng.</strong></p><p><strong>Hướng dẫn sử dụng:</strong></p><p>Pha một gói 25g ngũ cốc dinh dưỡng với khoảng 130 – 150ml nước nóng, khuấy đều và dùng ngay.</p><p><strong>Độ&nbsp;tuổi sử dụng:</strong></p><p>Người trưởng thành trên 19 tuổi</p><p><strong>Hạn sử dụng:</strong></p><p>12 tháng kể từ ngày sản xuất</p><p><strong>Nơi sản xuất:</strong></p><p>Việt Nam</p>', '1669966867h1000-.jpg', 212, 8, 5, 0, 0),
(68, 'Túi Ngũ Cốc Dinh Dưỡng Värna Calcium 500g', 75000, '<p>THÔNG TIN</p><p><strong>Lợi ích sản phẩm:</strong></p><p><strong>CHỐNG OXY HOÁ</strong></p><p>Vitamin E, Vitamin A giúp cải thiện làn da, ngăn ngừa lão hoá<br><strong>HỖ TRỢ TIÊU HOÁ</strong></p><p>Chất xơ hỗ trợ đường ruột khoẻ mạnh kết hợp với Vitamin nhóm B giúp hấp thu chất dinh dưỡng tốt hơn<br><strong>BẢO VỆ SỤN KHỚP</strong></p><p>Collagen Thuỷ phân cung cấp dưỡng chất xây dựng cấu trúc sụn hỗ trợ bảo vệ sức khoẻ khớp<br><strong>NGĂN NGỪA LOÃNG XƯƠNG</strong></p><p>Nano Canxi và vitamin D3 giúp tăng cường mật độ xương, xây dựng khung xương vững vàng&nbsp;</p><p><strong>Thành phần:</strong></p><p>Ngũ cốc (33%) (bột mì, bột mì nguyên cám, xi-rô glucose, chiết xuất đại mạch, bột gạo, đường sucrose, bột đậu nành, bột bắp), chất béo thực vật (xi-rô glucose, dầu thực vật, đạm sữa, chiết xuất đại mạch), đường sucrose, chất xơ thực phẩm (FOS/ Inulin), vitamin và khoáng chất (tricalci phosphat, natri clorid, niacinamid, calci-D-pantothenat, pyridoxin hydroclorid, thiamin mononitrat, DL-alpha tocopheryl acetat, retinyl acetat, cholecalciferol), nano calci (1.7%) (calci cacbonat), collagen thủy phân, hương liệu tổng hợp dùng cho thực phẩm.<br>Sản phẩm chứa các nguyên liệu có nguồn gốc từ đại mạch, lúa mì, đậu nành, sữa.</p><p><strong>Đặc điểm nổi bật của sản phẩm:</strong></p><p>Ứng dụng <strong>tinh hoa khoa học dinh dưỡng Châu Âu</strong> cùng hơn 20 năm am hiểu sâu sắc thể trạng đặc thù của người Việt từ <strong>Chuyên gia dinh dưỡng Nutifood Ngũ cốc dinh dưỡng Värna Calcium</strong> <strong>MỚI</strong> được kiểm chứng bởi <strong>Viện nghiên cứu dinh dưỡng Nutifood Thụy Điển - NNRIS.</strong></p><p>Cung cấp nguồn dinh dưỡng tuyệt vời từ ngũ cốc nguyên cám kết hợp cùng<strong> 9 vitamin khoáng chất thiết yếu</strong> giúp<strong> chống oxy hóa hỗ trợ đường ruột khỏe mạnh</strong> đặc biệt chứa <strong>Nano Calci </strong>và<strong> Collagen thủy phân </strong>giúp<strong> xương chắc khớp khỏe.</strong></p><p><strong>Hướng dẫn sử dụng:</strong></p><p>Pha một gói 25g ngũ cốc dinh dưỡng với khoảng 130 – 150ml nước nóng, khuấy đều và dùng ngay.</p><p><strong>Độ&nbsp;tuổi sử dụng:</strong></p><p>Người trưởng thành và trẻ em trên 3 tuổi</p><p><strong>Hạn sử dụng:</strong></p><p>12 tháng kể từ ngày sản xuất</p>', '1669967029h1000-w100.jpg', 32, 8, 5, 0, 0),
(69, 'Thùng 14 Túi Ngũ Cốc Dinh Dưỡng Värna Complete Túi 500g', 1148000, '<p>THÔNG TIN</p><p><strong>Lợi ích sản phẩm:</strong></p><p><strong>TĂNG CƯỜNG ĐỀ KHÁNG</strong></p><p>Vitamin C, Kẽm, vitamin AE giúp tăng cường hệ miễn dịch<br><strong>HỆ XƯƠNG CHẮC KHOẺ</strong></p><p>Vitamin K2, Calcium, Vitamin D3 giúp ngăn ngừa loẵng xương hiệu quả<br><strong>HỖ TRỢ TIÊU HÓA</strong></p><p>Chất xơ hỗ trợ đường ruột khoẻ mạnh kết hợp với Vitamin nhóm B giúp hấp thu chất dinh dưỡng tốt hơn<br><strong>TỐT CHO TIM MACH&nbsp;</strong></p><p>Vitamin K2 giúp ngăn ngừa xơ vữa động mạch và bảo vệ tim mạch</p><p><strong>Thành phần:</strong></p><p>Chất béo thực vật (xi-rô glucose, dầu thực vật, đạm sữa, chiết xuất đại mạch), ngũ cốc (33%) (bột mì, bột mì nguyên cám, xi-rô glucose, chiết xuất đại mạch, bột gạo, đường sucrose, bột đậu nành, bột bắp), đường sucrose, chất xơ thực phẩm (FOS/ Inulin), vitamin và khoáng chất (tricalci phosphat, natri clorid, natri-L-ascorbat, niacinamid, calci-D-pantothenat, pyridoxin hydroclorid, thiamin mononitrat, menaquinon, retinyl acetat, cholecalciferol, DL-alpha tocopheryl acetat, kẽm oxyd), hương liệu tổng hợp dùng cho thực phẩm, tổ yến tinh chế (50 mg/100g).<br>Sản phẩm chứa các nguyên liệu có nguồn gốc từ đại mạch, lúa mì, đậu nành, sữa.</p><p><strong>Đặc điểm nổi bật của sản phẩm:</strong></p><p>Ứng dụng <strong>tinh hoa khoa học dinh dưỡng Châu Âu</strong> cùng hơn 20 năm am hiểu sâu sắc thể trạng đặc thù của người lớn người ăn uống kém tại Việt Nam từ<strong> Chuyên gia dinh dưỡng Nutifood.</strong></p><p><strong>Ngũ cốc dinh dưỡng Värna Complet</strong>e <strong>MỚI</strong> chứa <strong>Tổ yến tinh chế</strong> bổ dưỡng được kiểm chứng bởi <strong>Viện nghiên cứu dinh dưỡng Nutifood Thụy Điển - &nbsp;NNRIS </strong>cung cấp nguồn dinh dưỡng tuyệt vời từ<strong> ngũ cốc nguyên cám</strong> kết hợp cùng <strong>12 vitamin khoáng chất</strong> thiết yếu giúp duy trì<strong> hệ xương khỏe mạnh, hỗ trợ tiêu hóa</strong> và<strong> tăng cường sức đề kháng.</strong></p><p><strong>Hướng dẫn sử dụng:</strong></p><p>Pha một gói 25g ngũ cốc dinh dưỡng với khoảng 130 – 150ml nước nóng, khuấy đều và dùng ngay.</p><p><strong>Quy cách:</strong> Thùng 14 Túi - Túi 500g</p><p><strong>Độ&nbsp;tuổi sử dụng:</strong></p><p>Người trưởng thành trên 19 tuổi</p><p><strong>Hạn sử dụng:</strong></p><p>12 tháng kể từ ngày sản xuất</p><p><strong>Nơi sản xuất:</strong></p><p>Việt Nam</p>', '1669967123h1000.jpg', 32, 8, 5, 0, 0),
(71, 'Thùng 14 Túi Ngũ Cốc Dinh Dưỡng Värna Calcium Túi 500g', 1050000, '<p>THÔNG TIN</p><p><strong>Lợi ích sản phẩm:</strong></p><p><strong>CHỐNG OXY HOÁ</strong></p><p>Vitamin E, Vitamin A giúp cải thiện làn da, ngăn ngừa lão hoá<br><strong>HỖ TRỢ TIÊU HOÁ</strong></p><p>Chất xơ hỗ trợ đường ruột khoẻ mạnh kết hợp với Vitamin nhóm B giúp hấp thu chất dinh dưỡng tốt hơn<br><strong>BẢO VỆ SỤN KHỚP</strong></p><p>Collagen Thuỷ phân cung cấp dưỡng chất xây dựng cấu trúc sụn hỗ trợ bảo vệ sức khoẻ khớp<br><strong>NGĂN NGỪA LOÃNG XƯƠNG</strong></p><p>Nano Canxi và vitamin D3 giúp tăng cường mật độ xương, xây dựng khung xương vững vàng&nbsp;</p><p><strong>Thành phần:</strong></p><p>Ngũ cốc (33%) (bột mì, bột mì nguyên cám, xi-rô glucose, chiết xuất đại mạch, bột gạo, đường sucrose, bột đậu nành, bột bắp), chất béo thực vật (xi-rô glucose, dầu thực vật, đạm sữa, chiết xuất đại mạch), đường sucrose, chất xơ thực phẩm (FOS/ Inulin), vitamin và khoáng chất (tricalci phosphat, natri clorid, niacinamid, calci-D-pantothenat, pyridoxin hydroclorid, thiamin mononitrat, DL-alpha tocopheryl acetat, retinyl acetat, cholecalciferol), nano calci (1.7%) (calci cacbonat), collagen thủy phân, hương liệu tổng hợp dùng cho thực phẩm.<br>Sản phẩm chứa các nguyên liệu có nguồn gốc từ đại mạch, lúa mì, đậu nành, sữa.</p><p><strong>Đặc điểm nổi bật của sản phẩm:</strong></p><p>Ứng dụng <strong>tinh hoa khoa học dinh dưỡng Châu Âu</strong> cùng hơn 20 năm am hiểu sâu sắc thể trạng đặc thù của người Việt từ <strong>Chuyên gia dinh dưỡng Nutifood Ngũ cốc dinh dưỡng Värna Calcium</strong> <strong>MỚI</strong> được kiểm chứng bởi <strong>Viện nghiên cứu dinh dưỡng Nutifood Thụy Điển - &nbsp;NNRIS.</strong></p><p>Cung cấp nguồn dinh dưỡng tuyệt vời từ ngũ cốc nguyên cám kết hợp cùng<strong> 9 vitamin khoáng chất thiết yếu</strong> giúp<strong> chống oxy hóa hỗ trợ đường ruột khỏe mạnh</strong> đặc biệt chứa <strong>Nano Calci </strong>và<strong> Collagen thủy phân </strong>giúp<strong> xương chắc khớp khỏe.</strong></p><p><strong>Hướng dẫn sử dụng:</strong></p><p>Pha một gói 25g ngũ cốc dinh dưỡng với khoảng 130 – 150ml nước nóng, khuấy đều và dùng ngay.</p><p><strong>Quy cách:</strong> Thùng 14 Túi - Túi 500g</p><p><strong>Độ&nbsp;tuổi sử dụng:</strong></p><p>Người trưởng thành và trẻ em trên 3 tuổi</p><p><strong>Hạn sử dụng:</strong></p><p>12 tháng kể từ ngày sản xuất</p>', '1669967248h1000-w1.jpg', 14, 8, 5, 0, 0),
(72, 'Thùng 36 Hộp Sữa Đậu Nành Nuti Canxi Hộp 200ml', 155000, '<p>THÔNG TIN</p><p><strong>Đặc điểm nổi bật của sản phẩm:</strong></p><ul><li>Chứa nano canxi siêu mịn, siêu hấp thụ (nhỏ hơn canxi thông thường gấp 100 lần)</li><li>Được chứng nhận lâm sàng về khả năng giảm loãng xương sau 12 tuần sử dụng</li><li>Cung cấp protein, vitamins tốt cho sức khỏe và sắc đẹp</li><li>100% đậu nành không biến đổi GEN (non GMO)</li><li>Sản phẩm không có chất bảo quản và cholesterol.</li></ul><p><strong>Thành phần:</strong></p><p>Nước, dịch trích đậu nành hạt, <strong>NANO CANXI</strong>, vitamin (A, D3, B1, B6), muối ăn, protein, đường tinh luyện.</p><p><strong>Đối tượng sử dụng:</strong> không sử dụng cho trẻ em dưới 3 tuổi</p><p><strong>HSD:</strong> 6 tháng kể từ ngày sản xuất. Xem trên nắp hộp</p><p><strong>Hướng dẫn bảo quản và sử dụng:&nbsp;</strong></p><ul><li>Bảo quản nơi khô ráo và thoáng mát.</li><li>Thành phần đậu nành có thể bị lắng nhưng chất lượng sản phẩm không thay đổi. Lắc đều sản phẩm trước khi sử dụng.&nbsp;</li><li>Ngon hơn khi uống lạnh.</li><li>Đối với hộp và bịch 200 ml: Sản phẩm sử dụng cho 1 lần uống. Đối với hộp 1 lít: Sau khi mở nắp giữ lạnh tại 3 – 8 độ C. Sử dụng hết trong 3 ngày sau khi mở hộp.</li></ul>', '1669967383nuticanxi.jpg', 45, 8, 5, 0, 0),
(73, 'Sữa Aptamil New Zealand số 1 900g (0 - 12 tháng)', 667000, '<p><strong>Sữa Aptamil New Zealand số 1</strong> 900g cải tiến mới được tập đoàn DANONE phát triển với công thức Synbiotic ưu việt, 100% nhập khẩu từ New Zealand.&nbsp;Bộ dưỡng chất Synbiotic được cấp bằng sáng chế giúp tăng cường miễn dịch đầu đời. Hàm lượng DHA trong Aptamil New Zealand cũng được tăng thêm, hỗ trợ tốt nhất cho sự phát triển của não bộ. Cùng 22 vitamin và khoáng chất thiết yếu, sản phẩm góp phần chăm sóc sức khỏe bé trong giai đoạn 0 - 12 tháng.</p><h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3><p>Sữa Aptamil New Zealand số 1 100% nhập khẩu từ New Zealand&nbsp;với công thức Synbiotic độc quyền chứa:</p><p>- Bộ dưỡng chất Synbiotic được cấp bằng sáng chế là một sự kết hợp độc đáo giữa Prebiotics (scGOS/lcFOS 9:1) và Probiotic B. breve M-16V giúp hỗ trợ hệ miễn dịch.</p><p>- Lượng đạm theo tiêu chuẩn vàng Whey:Casein tỷ lệ 60:40</p><p>- Hàm lượng cao DHA tốt cho sự phát triển của não bộ cùng những dưỡng chất quan trọng giúp bổ trợ hoạt động của tế bào thần kinh.</p><p>- Calcium, Vitamin K1 và Vitamin D3 giúp răng và xương khỏe mạnh.</p><p>- 22 Vitamins và khoáng chất góp phần giúp trẻ phát triển bình thường và khỏe.</p><h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3><p><i><strong>Cách pha sữa</strong></i></p><p>Bước 1: Rửa tay trước khi pha sữa cho bé.</p><p>Bước 2: Tiệt trùng tất cả các dụng cụ như cốc/bình hoặc muỗng bằng cách đun sôi trong nước khoảng 10 phút.</p><p>Bước 3: Đổ đúng lượng nước đun sôi vào cốc/ bình đã được làm sạch và tiệt trùng. Cẩn thận để tránh bỏng nước sôi.</p><p>Bước 4: Làm mát nước này đến nhiệt độ phù hợp (khoảng 40°C) bằng cách giữ bình dưới vòi nước lạnh.</p><p>Bước 5: Thêm bột đúng lượng dùng khuyến nghị vào bình.</p><p><i><strong>Lưu ý:</strong></i></p><p>-&nbsp;Sản phẩm được pha ở nhiệt độ 40 độ C.</p><p>- Sữa đã pha không cho bé dùng sau 2 giờ.</p>', '166996754227823_aptamil_nz_1__font.png', 123, 10, 4, 0, 0),
(74, 'Sữa Aptamil Đức số 2 800g (6 - 12 tháng)', 610000, '<p>Bên cạnh dòng <a href=\"https://bibomart.com.vn/aptamil.html\">sữa Aptamil</a> Anh, nhãn hiệu <a href=\"https://bibomart.com.vn/aptamil.html\">Aptamil</a> đến từ Đức cũng là một dòng sữa được ưa chuộng tại thị trường Châu Âu. <a href=\"https://bibomart.com.vn/aptamil.html\"><strong>Sữa&nbsp;Aptamil</strong></a><strong> Đức số 2</strong> 800g dưới đây mang đến cho các bé trong giai đoạn ăn dặm từ 6 đến 12 tháng một sản phẩm công thức dinh dưỡng hỗ trợ chế độ ăn hàng ngày. Aptamil Đức số 2 đặc biệt mang đến hệ dưỡng chất cải tiến mới Pronutra Advance, với sự xuất hiện của HMO 3\'-GL, kết hợp cùng&nbsp;GOS/FOS tối ưu miễn dịch, tăng cường sức đề kháng trong giai đoạn đầu đời. Bên cạnh đó, hỗn hợp&nbsp;LCP chứa tỷ lệ AA/DHA từ lượng Omega 3, 6 hỗ trợ tốt nhất cho quá trình phát triển trí não, hệ thần kinh và thị giác của bé.</p><h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3><p>- Sữa Aptamil Đức số 2 mang đến hệ dưỡng chất cải tiến mới từ công trình hơn 40 năm nghiên cứu của thương hiệu Aptamil - Pronutra Advance, bao gồm:</p><p>+ Hỗn hợp LCP (DHA/AA đến từ Omega 3, 6) rất cần thiết cho sự phát triển trí não và thị giác của bé, tạo tiền đề cho sự phát triển về nhận thức và các hoạt động thần kinh ngay từ giai đoạn đầu đời.</p><p>+ Prebiotics GOS/FOS được xây dựng cân đối mang đến nguồn sữa mát có tác dụng kích thích quá trình phát triển của các vi sinh có lợi trong dạ dày của trẻ, giúp bé dễ tiêu hóa hơn và bảo vệ cơ thể chống lại những loại vi trùng gây bệnh tấn công. Nhờ đó, mẹ không còn nỗi lo lắng trẻ sẽ bị táo bón khi sử dụng sữa công thức.</p><p>+ Sự xuất hiện đặc biệt của HMO 3’-GL - một loại oligosacarit được sản xuất theo quy trình độc đáo của Aptamil – kết hợp cùng GOS/FOS giúp củng cố hệ thống miễn dịch, tăng cường sức đề kháng tối ưu cho bé trong giai đoạn đầu đời.</p><p>- Thành phần dinh dưỡng Aptamil Đức 2 chứa đến 32 loại vitamin cùng khoáng chất thiết yếu cân bằng dinh dưỡng, bổ sung lượng dưỡng chất giúp duy trì một cơ thể khỏe mạnh và tạo tiền đề cho sự phát triển toàn diện của bé sau này, trong đó:</p><p>+ Hàm lượng cao vitamin C, D hỗ trợ chức năng bình thường của hệ thống miễn dịch và giúp hấp thu Canxi tốt hơn để trẻ xây dựng hệ răng, xương chắc khỏe.</p><p>+ Đáp ứng đủ nhu cầu tăng cao về Sắt trong giai đoạn ăn dặm, hỗ trợ sự phát triển nhận thức bình thường.</p><h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3><p><i><strong>Cách pha sữa</strong></i></p><p>- Rửa tay và vệ sinh sạch sẽ các dụng cụ pha sữa trước khi pha.</p><p>- Nước đun sôi để nguội đến khoảng 40 độ C.</p><p>- Đổ 2/3 lượng nước cần dùng vào bình đã khử trùng</p><p>- Lấy đủ lượng sữa theo tỷ lệ hướng dẫn và đổ vào bình (1 muỗng gạt ngang tương đương 4.9g sữa, pha cùng 30ml nước).</p><p>- Đậy nắp và lắc đều để sữa tan. Đổ 1/3 lượng nước còn lại vào bình, tiếp tục lắc nhẹ.</p><p>- Kiểm tra nhiệt độ sữa trước khi cho bé uống. Nhiệt độ lý tưởng là 37 độ C.</p><p><i><strong>Định lượng pha tham khảo</strong></i></p><p>Mẹ pha 7 muỗng gạt ngang với 210ml nước để được 230ml <a href=\"https://bibomart.com.vn/sua-bot-cac-loai.html\">sữa cho bé</a> uống. Nên duy trì uống 1 - 2 lần/ngày.</p><h3><strong>Hướng dẫn bảo quản sản phẩm</strong></h3><p>- Bảo quản sữa nơi khô ráo, thoáng mát trong nhiệt độ phòng khoảng 25 độ C, tránh ánh nắng trực tiếp từ mặt trời.&nbsp;</p><p>- Sử dụng trong vòng 4 tuần sau khi mở nắp</p>', '1669967703sua-aptamil-duc-2.jpg', 156, 10, 4, 0, 0),
(75, 'Sữa Aptamil Profutura Duobiotik số 1 800g (0 - 6 tháng)', 780000, '<p>Những năm tháng đầu tiên sau sinh là giai đoạn vô cùng quan trọng và ý nghĩa nên ba mẹ muốn xây dựng một nền tảng thật tốt để là bước đệm cho sự phát triển toàn diện của bé sau này. Thấu hiểu được điều đó, Aptamil không ngừng nghiên cứu, phát triển và cho ra đời các dòng sản phẩm dinh dưỡng chất lượng để đồng hành cùng ba mẹ trên từng chặng đường nuôi con khôn lớn. <strong>Sữa Aptamil Profutura Duobiotik số 1</strong> được cải tiến với hệ dưỡng chất kết hợp Prebiotics scGOS/lcFOS (9:1) và HMO 3’-GL từ quy trình Lactofidus mang đến nguồn dưỡng chất tuyệt vời cho các bé trong độ tuổi 0 - 6 tháng, giúp bé phát triển khỏe mạnh về cả trí não và thể trạng.</p><h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3><p><i><strong>Hệ dưỡng chất dồi dào</strong></i></p><p>- Hệ dưỡng chất kết hợp Prebiotics scGOS/lcFOS (9:1) và HMO 3’-GL từ quy trình Lactofidus giúp tăng cường hệ miễn dịch, cung cấp các tầng bảo vệ chống lại tác nhân gây bệnh cũng như thúc đẩy sự phát triển của vi khuẩn đường ruột có lợi.</p><p>-&nbsp;Sữa Aptamil Profutura Duobiotik số 1 còn cung cấp DHA &amp; ARA (Omega 3&amp;6) giúp xây dựng nền tảng não bộ và tăng cường khả năng miễn dịch chống lại bệnh tật.</p><p>- Không chứa dầu cọ gây ra tình trạng táo bón ở trẻ.</p><p><i><strong>Thiết kế hộp EazyTin đột phá</strong></i></p><p>- Niêm phong 3 lớp, bảo vệ gấp 3 lần.</p><p>- Nắp gài chắc chắn hạn chế tối đa nhiễm khuẩn và đổ bột</p><p>- Chốt gắn muỗng gạt vệ sinh để giữ muỗng và tay luôn sạch sẽ, khô ráo.</p><h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3><p><i><strong>Công thức tiêu chuẩn</strong></i></p><p>Cho 1 muỗng (4,6 g) Aptamil Profutura Duobiotik 1 vào 30ml nước. Các tỷ lệ chỉ được thay đổi khi có lời khuyên của chuyên viên y tế. Pha sản phẩm không đúng cách có thể ảnh hưởng đến sức khỏe của trẻ sơ sinh. Chỉ pha sẵn một phần ăn cho một lần dùng. Sử dụng muỗng được cung cấp.</p><h3><strong>Hướng dẫn bảo quản sản phẩm</strong></h3><p>- Sử dụng trước thời hạn in trên đáy bao bì</p><p>- Sử dụng hết trong vòng 4 tuần</p><p>- Bảo quản sản phẩm ở nơi khô ráo thoáng mát trước và sau khi mở hộp, hạn chế để sản phẩm tiếp xúc với không khí.</p><p>- Aptamil Profutura Duobiotik 1 là sản phẩm công thức cho trẻ từ 0 - 6 tháng tuổi. Chỉ sử dụng sản phẩm này theo chỉ dẫn của bác sĩ. Pha chế theo đúng hướng dẫn. Cho trẻ ăn bằng cốc, thìa hợp vệ sinh.</p>', '1669967858san-pham-dinh-duong-cong-thuc-aptamil-profutura-duobiotik-1-danh-cho-tre-tu-0-6-thang-tuoi-800g.jpg', 78, 10, 4, 0, 0),
(76, 'Sữa tươi tiệt trùng Vinamilk 100% có đường - Lốc 4 hộp x 110ml', 18000, '<p>• 100% sữa bò tươi nguyên chất từ những cô bò hạnh phúc được chăm sóc trong môi trường lý tưởng tại hệ thống 12 trang trại rộng lớn trải dài khắp Việt Nam, được ví nhưng những \"Resort bò sữa\", nơi các cô bò được ăn ngon, tắm mát, mát xa, nằm đệm. Tìm hiểu thêm về \"Resort bò sữa\":&nbsp;<a href=\"https://www.vinamilk.com.vn/sua-tuoi-vinamilk/vi/trang-trai-chuan-quoc-te/\">https://www.vinamilk.com.vn/sua-tuoi-vinamilk/vi/trang-trai-chuan-quoc-te/</a><br>• Được bổ sung thêm Vitamin A, D3 và Selen giúp hỗ trợ miễn dịch cho cả gia đình.</p><p><strong>Hạn sử dụng:</strong>&nbsp;6 tháng kể từ ngày sản xuất<br><i>Lưu ý: Không dành cho trẻ dưới</i></p>', '1669968085loc-4-hop-sua-tuoi-co-duong-vinamilk-100-sua-tuoi-110ml-202104111619235389.jpg', 32, 7, 10, 1, 0),
(77, 'Sữa tươi tiệt trùng có đường Vinamilk hộp 110ml', 6000, '<p>Được chế biến từ nguồn <a href=\"https://www.bachhoaxanh.com/sua-tuoi\">sữa tươi</a> 100% chứa nhiều dưỡng chất như vitamin A, D3, canxi,... tốt cho xương và hệ miễn dịch. <a href=\"https://www.bachhoaxanh.com/sua-tuoi-vinamilk\">Sữa tươi Vinamilk</a> là thương hiệu được tin dùng hàng đầu với chất lượng tuyệt vời.&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-tuoi/sttt-vinamilk-dan-bo-cd-110ml\">Sữa tươi tiệt trùng có đường Vinamilk hộp 110ml</a>&nbsp;hương socola dễ uống</p><ul><li>Dung tích</li></ul><p>110ml</p><ul><li>Thành phần</li></ul><p>Sữa bò tươi, đường, Vitamin A, Vitamin D3,...</p><ul><li>Thương hiệu</li></ul><p>Vinamilk (Việt Nam)</p><ul><li>Sản xuất tại</li></ul><p>Việt Nam</p>', '16699682091669782158r.jpg', 7, 7, 10, 1, 0),
(78, 'Sữa túi Vinamilk Socola 220ml', 7500, '<p>Được chế biến từ nguồn&nbsp;sữa tươi&nbsp;100% chứa nhiều dưỡng chất như vitamin A, D3, canxi, DHA,... tốt cho xương và hệ miễn dịch.&nbsp;Sữa tươi Vinamilk&nbsp;là thương hiệu được tin dùng hàng đầu với chất lượng tuyệt vời.&nbsp;Thùng 48 bịch sữa dinh dưỡng socola Vinamilk A&amp;D3 220ml&nbsp;hương socola ngon dễ uống</p><figure class=\"image\"><img src=\"https://bizweb.dktcdn.net/100/433/933/products/thung-48-bich-sua-dinh-duong-vinamilk-a-d3-so-co-la-220ml-202001090909261704.jpg?v=1629380420570\"></figure><ul><li>Loại sữa:&nbsp;Sữa dinh dưỡng socola</li><li>Dung tích:&nbsp;220ml</li><li>Phù hợp với:&nbsp;Trẻ từ 1 tuổi trở lên</li><li>Thành phần:&nbsp;Nước, sữa bột, đường tinh luyện, chất béo sữa, dầu thực vật, bột cacao (4,2g/l), chất ổn định (471,407,412), hương liệu tổng hợp dùng cho thực phẩm, vitamin (A, D3)</li><li>Thương hiệu:&nbsp;Vinamilk (Việt Nam)</li><li>Sản xuất tại:&nbsp;Việt Nam</li></ul><p><strong>Sữa tiệt trùng Vinamilk A&amp;D3 hương sô cô la</strong>&nbsp;thơm ngon, dễ uống, trong&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-tuoi\"><strong>sữa</strong></a>&nbsp;có bổ sung nhiều vitamin và khoáng chât như vitamin D3, vitamin A, và canxi, tốt cho thị giác và hệ xương.</p>', '1669968494200000830_sua-tuoi-tiet-trung-co-duong-vinamilk-1l.png', 75, 6, 10, 0, 0),
(79, 'Sữa dinh dưỡng Vinamilk có đường - Bịch 220ml', 10000, '<p>Quy cách thùng:&nbsp;48 bịch/thùng</p><p><strong>Tên Sản phẩm: Thực phẩm bổ sung Sữa dinh dưỡng (Sữa tiệt trùng) Vinamilk có đường - Bịch 220ml</strong></p><ul><li>Giúp tăng cường thị lực và có một hệ xương thật chắc khỏe</li><li>Hương vị thơm ngon, đa dạng cho cả gia đình nhiều sự lựa chọn hấp dẫn</li><li>Giàu dưỡng chất, tiện dụng với mức giá vô cùng hợp lý</li></ul><p>Sữa bịch Vinamilk không chỉ là nguồn dưỡng chất thiết yếu mà còn thật tiết kiệm, giúp bạn và gia đình thưởng thức cuộc sống tươi đẹp trọn vẹn.</p>', '1669968704gia_sua_vinamilk_24-1.png', 32, 7, 10, 1, 0),
(80, 'SỮA TƯƠI TIỆT TRÙNG VINAMILK 100% KHÔNG ĐƯỜNG - HỘP 1L', 24000, '<p><strong>I. QUY CÁCH ĐÓNG GÓI:</strong></p><p>- Lốc 4 hộp x 180ml</p><p>- Thùng 48 hộp (12 lốc) x 180ml</p><p><strong>II. ĐẶC ĐIỂM NỔI BẬT:</strong></p><p>- Thức uống Sữa trái cây Vinamilk Hero mới ngon tuyệt! Với <strong>Canxi &amp; Vitamin D3</strong> giúp xương chắc khỏe, <strong>Vitamin A</strong> cho đôi mắt sáng tinh anh cùng <strong>các vitamin nhóm B</strong>, giúp trẻ luôn tràn đầy năng lượng và sảng khoái.</p><p>- Hạn sử dụng: 06 tháng. Sản phẩm không sử dụng chất bảo quản.</p>', '16699688631_1-1-1@2x-1.jpg', 21, 7, 10, 1, 0),
(81, 'Sữa tươi tiệt trùng Vinamilk 100% có đường 180ml - Thùng 48 hộp', 372000, '<h2><strong>1. Đặc điểm nổi bật của​ sản phẩm</strong></h2><p>- Đầy đủ các thành phần dinh dưỡng: chất béo, đạm, vitamin, canxi,... cung cấp năng lượng dồi dào cho các hoạt động trong ngày của bé.<br>- Bổ sung chất dinh dưỡng cho cơ thể khỏe mạnh, giúp bé phát triển hệ xương, ăn ngon miệng và tăng sức đề kháng.<br>- Bổ sung vitamin D3 theo chuẩn ESFA Châu Âu kết hợp cùng vitamin A, C và Selen hỗ trợ hệ miễn dịch khỏe mạnh,&nbsp;cho cả gia đình thêm khỏe mạnh để luôn sẵn sàng làm tốt những công việc quan trọng mỗi ngày.<br>- Giữ nguyên hương vị tự nhiên, thơm ngon thuần khiết.<br>- Thành phần: Sữa bò tươi (95,9%), đường tinh luyện (3,8%), chất ổn định (471, 460 (i), 407,466), vitamin (natri ascorbat, A, D3), khoáng chất (natri selenit), hương liệu tổng hợp dùng cho thực phẩm.</p><p>&nbsp;</p><h2><strong>2. Hướng dẫn sử dụng</strong></h2><p>- Sử dụng ngay sau khi mở bao bì.<br>- Ngon hơn khi uống lạnh.<br>- Nên uống 2 - 3 hộp mỗi ngày.</p><h2><strong>3. Cách bảo quản</strong></h2><p>- Bảo quản nơi khô ráo, thoáng mát.<br>- Nên dùng hết sau khi mở.</p>', '1669968997sua-tuoi-tiet-trung-vinamilk-100-co-duong-180ml-thung-48-hop-1623398663.jpg', 7, 7, 10, 1, 0),
(82, 'Sữa Aptamil Profutura Úc số 3 900g (Trên 1 tuổi)', 830000, '<p><strong>Sữa Aptamil Profutura Úc</strong> số 3 900g&nbsp;nhập khẩu từ Úc, dành cho bé trên 1 tuổi đang được rất nhiều ba mẹ tin tưởng và sử dụng cho bé. Sữa bổ sung nhiều thành phần dinh dưỡng cần thiết tốt cho sức khỏe và trí não của trẻ sơ sinh và trẻ nhỏ. Hầu hết những dưỡng chất như: Vitamin và vi chất có trong sữa khá giống với sữa mẹ, giúp bé phát triển toàn diện cả về trí não, thị giác, thính giác và có thể lực tốt, tiếp nhận và sản sinh thêm nhiều kháng thể bảo về bé toàn diện dưới các tác động tự nhiên từ môi trường xung quanh.</p><h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3><p>Trong tất cả dòng Aptamil trên toàn thế giới thì Aptamil Profutura Úc là loại đặc biệt nhất - thuộc phân khúc cao cấp do có chứa yếu tố sau mà không phải sữa nào cũng có:</p><p>- Men vi sinh Probiotic: một dạng men được tìm thấy nhiều trong sữa mẹ. Đây là thành phần quan trọng hỗ trợ cho hệ tiêu hóa khỏe mạnh dễ dàng tiêu hóa hấp thu các dưỡng chất cần thiết phòng chống táo bón.</p><p>-&nbsp;Sữa Aptamil Profutura Úc số 3 - 900g&nbsp;này có thành phần men vi Sinh hỗ trợ hệ tiêu hoá rất tốt, ngăn ngừa và cải thiện vấn đề táo bón hay xảy ra với các bé uống sữa công thức, vì hệ thống đào thải đã được hỗ trợ bởi men, giúp bé hấp thụ tối đa các chất dinh dưỡng và bảo vệ hệ miễn dịch của các bé</p><p>- DHA có trong Aptamil được chiết xuất từ dầu cá (DHA cao hơn 33% so với các dòng sữa khác): Hỗ trợ phát triển trí não toàn diện - thông minh và giúp sáng mắt.</p><p>- Metabolism: Cung cấp các chất để thúc đẩy và hỗ trợ cho việc trao đổi chất</p><p>- Đặc biệt là dòng sữa Non-GMO ( không biến đổi gen)</p><h3>Hướng dẫn sử dụng&nbsp;</h3><p>1. Rửa tay trước khi pha. Làm sạch và sau đó khử trùng tất cả các dụng cụ bằng cách đun sôi trong 5 phút hoặc sử dụng máy tiệt trùng chuẩn chính hãng để khử trùng trước khi pha sữa cho bé.&nbsp;</p><p>2. Đun sôi nước uống an toàn và cho phép làm ấm đến nhiệt độ cho ăn. Đo khối lượng nước yêu cầu và bình pha được tiệt trùng.</p><p>3. Chỉ sử dụng muỗng kèm theo. Lấy đầy muỗng và đậy nắp gắn liền. Tránh nén bột.</p><p>4. Luôn thêm 1 muỗng bột cho mỗi 50mL nước, nhiệt độ nước pha sữa nhỏ hơn hoặc bằng 40 độ C (để đảm bảo hoạt động của probiotic trong sữa). Đậy nắp bình pha và lắc mạnh để hòa tan bột.</p><p>5. Kiểm tra nhiệt độ trên cổ tay trước khi cho uống. Cho uống ngay (không lưu trữ). Vứt bỏ phần sữa thừa.</p><p>Chuẩn bị từng bình riêng biệt. Đối với tất cả các nhãn hiệu sữa công thức, sẽ an toàn hơn khi sử dụng ngay sau khi sữa được pha.</p><p><i><strong>Lưu ý:</strong></i></p><p>- Trẻ trên 1 tuổi: pha 2 muỗng bột với 100ml nước đun sôi để nguội. Tối đa 4 lần uống 1 ngày.</p><h3>Bảo quản</h3><p>- Bảo quản ở nơi khô mát.</p><p>- Sử&nbsp; dụng theo ngày trên đáy lon.</p><p>- Sau khi mở, giữ&nbsp; kín lon và sử dụng hàm lượng sữa trong vòng bốn tuần.</p>', '16699690261 tuoi.jpg', 165, 10, 4, 0, 0),
(83, 'Sữa Aptakid New Zealand số 3 900g (Trên 2 tuổi)', 650000, '<p><strong>Sữa Aptakid New Zealand số 3</strong>&nbsp;900g là công thức dinh dưỡng cải tiến từ&nbsp;tập đoàn&nbsp;DANONE (Pháp)&nbsp;dành cho trẻ giai đoạn trên 2 tuổi, được phát triển với công thức Synbiotic bao gồm bộ đôi&nbsp;Prebiotics (scGOS/lcFOS 9:1) và Probiotic B. breve M-16V&nbsp;giúp tăng cường miễn dịch đầu đời. Bên cạnh đó, hàm lượng cao DHA có trong thành phần&nbsp;Aptakid New Zealand sẽ giúp bé phát triển thật tốt não bộ và hệ thần kinh. Sữa bổ sung 16 vtamin và khoáng chất thiết yếu, cần thiết cho sự tăng trưởng và phát triển khỏe mạnh của bé.</p><h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3><p>Sữa Aptakid New Zealand số 3&nbsp;100% nhập khẩu&nbsp;&nbsp;từ New Zealand với công thức Synbiotic độc quyền chứa:</p><p>- Bộ dưỡng chất Synbiotic được cấp bằng sáng chế là một sự kết hợp độc đáo giữa Prebiotics (scGOS/lcFOS 9:1) và Probiotic B. breve M-16V giúp hỗ trợ hệ miễn dịch.</p><p>- Hàm lượng cao DHA tốt cho sự phát triển của não bộ cùng những dưỡng chất quan trọng giúp bổ trợ hoạt động của tế bào thần kinh.</p><p>- Calcium và Vitamin D3 giúp răng và xương khỏe mạnh.</p><p>- 16 Vitamins và khoáng chất góp phần giúp trẻ phát triển bình thường và khỏe.</p><p><i><strong>Lưu ý:</strong></i></p><p>-&nbsp;Sản phẩm được pha ở nhiệt độ 40 độ C.</p><p>- Sữa đã pha không cho bé dùng sau 2 giờ.</p><p>- Chỉ sử dụng muỗng pha trong hộp.</p><p><i><strong>Lượng pha tiêu chuẩn</strong></i>: 1 muỗng (9.2g) Aptakid pha với 50ml nước. Mỗi lần dùng pha 4 muỗng với 200ml nước.</p><p><i><strong>Lượng dùng khuyến nghị</strong></i></p><p>- Trẻ từ 2 - 6 tuổi khuyên dùng 2 ly mỗi ngày.</p><p>- Trẻ từ 7 - 9 tuổi khuyên dùng 1 ly mỗi ngày.</p><h3><strong>Hướng dẫn bảo quản sản phẩm</strong></h3><p>- Bảo quản sữa nơi khô ráo, thoáng mát.</p><p>-&nbsp;Nên sử dụng trong vòng 3 tuần kể từ ngày mở nắp.</p>', '1669969149thuc-pham-bo-sung-aptakid-3-growing-up-milk-formula-2-tuoi-tro-len-900g.jpg', 653, 10, 4, 0, 0),
(84, 'Sữa Nan Optipro số 4 900g (2 - 6 tuổi)', 399000, '<p><strong>Sữa Nan Optipro số 4</strong> 900g&nbsp;là sản phẩm dinh dưỡng công thức từ Thụy Sĩ, bổ sung các dưỡng chất thiết yếu giúp hỗ trợ tiêu hóa, tăng cường sức đề kháng của trẻ trong giai đoạn 2 - 6 tuổi. Công thức dinh dưỡng của Nan Optipro 4&nbsp;chứa đạm chất lượng Optipro độc quyền từ Nestlé Thụy Sĩ với tỷ lệ đạm Whey vượt trội giúp dễ tiêu hóa, dễ hấp thu. Đặc biệt, sự bổ sung mới từ&nbsp;Nestlé HM-O 2\'FL với hàm lượng thích hợp&nbsp;giúp tăng cường sức đề kháng, giảm ốm vặt cho trẻ. Ngoài ra, sản phẩm còn chứa&nbsp;DHA và ARA, Omega 3, Omega 6 hỗ trợ tối ưu cho quá trình phát triển não bộ và thị lực của bé.</p><h3><strong>Thành phần sản phẩm</strong></h3><p>SỮA bột tách kem (skimmed MILK),&nbsp; LACTOSE (từ SỮA), ĐẠM chất lượng OPTIPRO (ĐẠM WHEY-WHEY PROTEIN từ SỮA), Dầu hướng dương giàu Oleic, Dầu ĐẬU NÀNH (SOYA bean oil), Dầu dừa, Canxi Citrate, Natri Citrate, Chất nhũ hóa Lecithin ĐẬU NÀNH (SOYA lecithin), Glucose Syrup, Chất nhũ hóa monoglycerides, Kali Phosphate, 2\'-O-Fucosyllactose (2\'- FL), Dầu cá giàu DHA (FISH oil high DHA), Các Vitamin (C,Nicotinamide, E, B5, A, B1, B6, B2, Axit Folic, K1, Biotin, D3, B12), Maltodextrin, Natri clorid, Dầu nấm giàu ARA, Các khoáng chất (Sắt Sulfate, Kẽm sulfate, Đồng sulfate,&nbsp; Kali Iodide, Mangan Sulfate, Natri Selenate), Hương vanilin tổng hợp, Chất điều chỉnh độ axit axit Citric, Bifidobacterium lactis (Bifidus BL), Chất chống oxy hóa Ascorbyl Palmitate, Chất chống oxy hóa Tocopherol hỗn hợp.</p><h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3><p>Sữa Nan Optipro số 4 là sản phẩm dinh dưỡng công thức từ Thụy Sĩ, bổ sung các dưỡng chất thiết yếu giúp hỗ trợ tiêu hóa, tăng cường sức đề kháng của trẻ. Công thức dinh dưỡng Nestlé Nan Optipro 4 từ Thụy Sĩ chứa:</p><p><i><strong>Đạm chất lượng Optipro</strong></i></p><p>Với tỷ lệ đạm Whey vượt trội giúp dễ tiêu hoá, dễ hấp thu, làm giảm thời gian làm trống dạ dày.</p><p><i><strong>Nestle HM-O 2\'FL</strong></i></p><p>Nan Optipro bổ sung hàm lượng 0.35G/L 2\'FL HM-O giúp tăng cường sức đề kháng, giảm tỷ lệ bệnh vặt, giảm số lượng hại khuẩn đường ruột.</p><p><i><strong>Lợi khuẩn Bifidus BL</strong></i></p><p>Lợi khuẩn Bifidus BL giúp hỗ tăng sức đề kháng, hỗ trợ tiêu hóa.</p><p><i><strong>DHA và ARA, Omega 3, Omega 6</strong></i></p><p>Các axit béo đặc biệt quan trọng giúp hỗ trợ phát triển trí não và thị lực.&nbsp;</p><p><i><strong>Canxi và Vitamin D</strong></i></p><p>Canxi kết hợp cùng Vitamin D giúp phát triển thể chất, hệ xương chắc khỏe cho bé.</p><h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3><p><i><strong>Cách pha chế</strong></i></p><p>- Rửa sạch tay trước khi pha cho trẻ.</p><p>- Rửa cốc và nắp đậy thật sạch. Đun sôi trong 5 phút. Đậy kín nắp đến khi sử dụng.</p><p>- Đun sôi nước và để nguội bớt (làm nguội nước bằng với nhiệt độ của cơ thể để đảm bảo những vi sinh vật có lợi còn sống)</p><p>- Theo sát bảng hướng dẫn cách pha. Đầu tiên, đổ nước ấm vào cốc. Sau đó, thêm chính xác số muỗng lường đã gạt ngang tương ứng với độ tuổi của trẻ.</p><p>- Đảm bảo muỗng lường khô ráo rồi đặt lại vào hộp. Đậy nắp kín sau mỗi lần sử dụng và bảo quản nơi khô ráo, thoáng mát.</p><p>- Đậy nắp và lắc hoặc khuấy đều cho đến khi bột được hòa tan hoàn toàn. Kiểm tra nhiệt độ trước khi cho trẻ uống.</p><h3><strong>Hướng dẫn bảo quản sản phẩm</strong></h3><p>- Bảo quản nơi khô ráo, thoáng mát. Tránh ánh nắng trực tiếp.</p><p>- Nên sử dụng trong vòng 3 tuần sau khi mở hộp.</p><p>&nbsp;</p>', '1669969355sua-nan-optipro-so-4-900g-126730-1.jpg', 326, 11, 1, 0, 0),
(85, 'Thùng 48 hộp sữa tươi tiệt trùng kem vanilla tự nhiên TH true MILK Top Kid Organic 180ml', 635000, '<p><strong>Sữa tươi tiệt trùng TH true MILK Top Kid vani </strong>được làm hoàn toàn từ nguồn sữa Organic đạt chứng nhận hữu cơ châu Âu với hương vị kem vanila tự nhiên thơm ngon, dễ uống.</p><p>Trong <a href=\"https://www.bachhoaxanh.com/sua-tuoi\"><strong>sữa</strong></a> có công thức Topkid bổ sung DHA, Canxi, Vitamin B1, B6, C, D và Axit Folic giúp phát triển trí não và chiều cao. Đồng thời các vitamin và khoáng chất trong sữa còn hỗ trợ tăng cường sức đề kháng và khả năng hấp thụ chất của cơ thể.</p><figure class=\"image\"><img src=\"https://cdn.tgdd.vn/Products/Images//2386/178967/bhx/files/topkid.jpg\" alt=\"Thùng 48 hộp sữa tươi tiệt trùng kem vanilla tự nhiên TH true MILK Top Kid Organic 180ml 0\"></figure><p><strong>Một số lợi ích của sữa:</strong></p><ul><li>Uống sữa mỗi ngày giúp cung cấp đầy đủ lượng vitamin và khoáng chất cần thiết cho nhu cầu dinh dưỡng của cơ thể.</li><li>Uống sữa giúp tăng cường thị lực</li><li>Uống sữa trước khi ngủ sẽ giúp giấc ngủ sâu và thoải mái hơn.</li><li>Sữa cung cấp một lượng năng lượng cần thiết cho cơ thể hoạt động không mỏi mệt.</li></ul><h3><strong>Hướng dẫn sử dụng</strong></h3><ul><li>Uống trực tiếp. Lắc đều trước khi sử dụng. Ngon hơn khi uống lạnh.</li><li>Sản phẩm sử dụng cho một lần uống.</li></ul><p><strong>Hai loại bao bì chuẩn quốc tế của sữa TH True Milk</strong></p>', '1669969461thung-48-hop-sua-tuoi-tiet-trung-kem.jpg', 32, 9, 10, 0, 0),
(86, 'Thùng 24 bịch sữa tươi tiệt trùng ít đường Dutch Lady Canxi & Protein 180ml', 170000, '<p><a href=\"https://www.bachhoaxanh.com/sua-tuoi\">Sữa tươi</a> dinh dưỡng chính hãng thương hiệu <a href=\"https://www.bachhoaxanh.com/sua-tuoi-dutch-lady\">Dutch Lady</a> là nguồn bổ sung canxi và protein thiết yếu mỗi ngày cho bé, giúp bé khoẻ mạnh, cao lớn hơn. <a href=\"https://www.bachhoaxanh.com/sua-tuoi/thung-24-bich-sua-tuoi-tiet-trung-it-duong-dutch-lady-canxi-protein-180ml\">Thùng sữa tươi tiệt trùng ít đường Dutch Lady Canxi &amp; Protein 180ml</a> ít đường, thơm ngon, uống không ngán. Thùng 24 bịch tiện lợi, tiết kiệm chi phí</p>', '1669969546thung-24-bich-sua-tuoi-tiet-trung-it-duong-dutch-lady-canxi-protein-180ml-202107011015363093.jpg', 44, 9, 10, 1, 0);
INSERT INTO `products` (`id`, `title`, `price`, `description`, `images`, `quantity`, `brand_id`, `category_id`, `view`, `sold`) VALUES
(87, 'Sữa Nan Organic số 1 900g (0 - 6 tháng tuổi)', 579000, '<p><strong>Sữa Nan Organic số 1 900g</strong> là sản phẩm dinh dưỡng công thức hữu cơ dành cho trẻ từ 0 dến 6 tháng tuổi được chứng nhận hữu cơ của NASAA. Nan Organic 1 cung cấp cho trẻ các chất dinh dưỡng hỗ trợ cho sự phát triển khỏe mạnh về thể chất và trí não.</p><h3>Đặc điểm nổi bật của sản phẩm</h3><p><i><strong>Thành phần dinh dưỡng&nbsp;</strong></i></p><p>&nbsp;</p><p>Sữa bột Nan Organic số 1 900g&nbsp;bao gồm các thành phần: Lactose hữu cơ, sữa tách béo (skimmed MILK) hữu cơ, dầu hướng dương giàu Oleic, đạm whey (WHEY PROTEIN) hữu cơ, dầu hạt cải có hàm lượng axit Erucic thấp, Fructo-oligosacarit, dầu hướng dương, Trisodium Citrate dehydrate, chất nhũ hóa Lecithin đậu nành (SOYA lecithin), Canxi Hydroxit, Kali Clorua, Magiê Chloride Hexahydrate, Vitamin C, Canxi hydro Phosphate dihydrate, dầu tảo giàu DHA, dầu nấm giàu ARA, Natri hydro cacbonat, Kali citrat, sắt Sulfate Heptahydrate, chất điều chỉnh độ axit Citric, kẽm sulfat, dầu đậu nành (SOYA bean oil), chất chống oxy hóa hỗn hợp Tocopherol, Nicotinamide, Vitamin E, Vitamin B5, đồng sulfat Pentahydrate, Vitamin A, Vitamin B1, Vitamin B6, Vitamin D3, Axit Folic, Kali iođua, chất chống oxy hóa Ascorbyl palmitat, Vitamin K1, Biotin, Vitamin B12.</p><p><i><strong>Điểm nổi bật của sản phẩm&nbsp;</strong></i></p><p>- Các thành phần từ sữa: các thành phần của sữa bột Nan Organic số 1 900g được sản xuất từ 100% sữa hữu cơ có nguồn gốc từ các trang trại bò sữa hữu cơ, tuân thủ các yêu cầu hữu cơ nghiêm ngặt nhất</p><p>- Đạm whey: Đạm có chất lượng giúp trẻ dễ tiêu hóa, dễ hấp thu để phát triển khỏe mạnh.</p><p>-&nbsp;Vitamin C,D và Kẽm: Hỗ trợ tăng sức đề kháng cho trẻ</p><p>- DHA và ARA: Hỗ trợ phát triển trí não và thị lực NAN Organic 1 với các thành phần đáp ứng tiêu chuẩn hữu cơ khắt khe của NASAA, cơ quan chứng nhận hữu cơ của Úc.</p><p>- Những thành phần có nguồn gốc từ tự nhiên xuất phát từ những trang trại nuôi trồng hữu cơ, những con bò phải đảm bảo được sống trong môi trường có không khí trong lành và ăn các thức ăn hữu cơ.&nbsp;&nbsp;</p><h3>Hướng dẫn sử dụng&nbsp;</h3><p><i><strong>Cách pha chế</strong></i></p><p>- Rửa sạch tay trước khi pha Nestlé® NAN® ORGANIC® 1 cho trẻ.<br>- Rửa cốc và nắp đậy cho đến khi không còn bợn bẩn.<br>- Đun sôi cốc và nắp đậy trong 5 phút. Đậy nắp kín cho đến khi sử dụng<br>- Đun sôi nước trong 5 phút, để nguội bớt.<br>- Tham khảo bảng hướng dẫn cách pha, rót chính xác lượng nước ấm cần dùng vào cốc đã được luộc.<br>- Chỉ dùng muỗng lường trong hộp và gạt ngang muỗng lường vào mép gờ của thành hộp.<br>- Tham khảo bảng hướng dẫn cách pha, thêm chính xác số lượng muỗng lường (gạt ngang) tương ứng với độ tuổi của trẻ.<br>- Sau khi dùng, đặt muỗng lường trên giá treo bên trong hộp.<br>- Đậy nắp và lắc hoặc khuấy cho đều đến khi bột được hòa tan hoàn toàn và cho trẻ uống liền. Không giữ lại phần thừa nếu trẻ không uống hết.</p><p><i><strong>Bảo quản</strong></i></p><p>- Đậy kín nắp hộp sau mỗi lần sử dụng và bảo quản nơi khô ráo.</p><p>- Nên sử dụng trong vòng 3 tuần sau khi mở hộp.</p><p>- Hạn sử dụng: 24 tháng</p>', '16699993001669969568sua-nan-organic-so-1-900-g-0-6-thang-tuoi.jpg', 42, 11, 1, 0, 0),
(88, 'Thùng 48 hộp sữa tiệt trùng có đường Nestlé NutriStrong 180ml', 348000, '<h2>Thông tin sản phẩm</h2><p>Được bổ sung thêm 25% canxi, vitamin A &amp; D, <a href=\"https://www.bachhoaxanh.com/sua-tuoi-nestle\">sữa tươi Nestle</a> giúp xương bạn khoẻ hơn mỗi ngày. <a href=\"https://www.bachhoaxanh.com/sua-tuoi\">Sữa tươi</a> Nestle được nhiều người ưa chuộng bởi nguồn dinh dưỡng dồi dào mà nó luôn cung cấp cho cơ thể. <a href=\"https://www.bachhoaxanh.com/sua-tuoi/stt-nestle-co-duong-180ml-thung-48\">Thùng 48 hộp sữa tiệt trùng có đường Nestlé NutriStrong 180ml</a> thêm đường kích thích vị ngon, dễ uống</p>', '1669969600thung-48-hop-sua-tiet-trung-co-duong-nestle-nutristrong-180ml-202210260912529145.jpg', 11, 9, 10, 0, 0),
(89, 'Thùng 48 bịch sữa dinh dưỡng có đường Vinamilk Happy Star 220ml', 336000, '<h2>Được chế biến từ nguồn <a href=\"https://www.bachhoaxanh.com/sua-tuoi\">sữa tươi</a> 100% chứa nhiều dưỡng chất như vitamin A, D3, canxi,... tốt cho xương và hệ miễn dịch. <a href=\"https://www.bachhoaxanh.com/sua-tuoi-vinamilk\">Sữa tươi Vinamilk</a> là thương hiệu được tin dùng hàng đầu với chất lượng tuyệt vời.&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-tuoi/stt-vinamilk-cd-star-fino-220ml-thung-48-bich\">Thùng 48 bịch sữa dinh dưỡng có đường Vinamilk Happy Star 220ml</a> đóng thùng tiện dùng lâu dài</h2><p><br>&nbsp;</p>', '1669969687thung-48-bich-sua-dinh-duong-co-duong-vinamilk-happy-star-220ml-202207221113404702.jpg', 18, 8, 10, 0, 0),
(90, 'Chuyển đến phần đầu của thư viện hình ảnh Sữa Nan Optipro số 2 900g (6 - 12 tháng)', 445000, '<p><strong>Sữa Nan Optipro số 2</strong>&nbsp;900g cải tiến mới, với sự xuất hiện của&nbsp;Nestlé HM-O 2\'FL với hàm lượng thích hợp&nbsp;giúp tăng cường sức đề kháng, giảm ốm vặt cho trẻ. Bên cạnh đó,&nbsp;đạm chất lượng Optipro độc quyền từ Nestlé Thụy Sĩ với tỷ lệ đạm Whey vượt trội giúp dễ tiêu hóa, dễ hấp thu.&nbsp;Ngoài ra, sản phẩm còn chứa&nbsp;DHA và ARA, Omega 3, Omega 6 hỗ trợ tối ưu cho quá trình phát triển não bộ và thị lực của bé. Nan Optipro 2&nbsp;là sản phẩm dinh dưỡng công thức từ Thụy Sĩ, bổ sung các dưỡng chất thiết yếu giúp hỗ trợ tiêu hóa, tăng cường sức đề kháng của trẻ trong giai đoạn 6 - 12 tháng.</p><h3><strong>Thành phần sản phẩm</strong></h3><p>SỮA bột tách kem (skimmed MILK), LACTOSE (từ SỮA), ĐẠM chất lượng OPTIPRO (ĐẠM WHEY-WHEY PROTEIN từ SỮA), Dầu hướng dương giàu Oleic, Dầu ĐẬU NÀNH (SOYA bean oil), Dầu dừa, Canxi Citrate, Natri Citrate, Chất nhũ hóa Lecithin ĐẬU NÀNH (SOYA lecithin), Glucose Syrup, Chất nhũ hóa monoglycerides, Kali Phosphate, 2\'-O-Fucosyllactose (2\'- FL), Dầu cá giàu DHA (FISH oil high DHA), Các Vitamin (C,Nicotinamide, E, B5, A, B1, B6, B2, Axit Folic, K1, Biotin, D3, B12), Maltodextrin, Natri clorid, Dầu nấm giàu ARA, Các khoáng chất (Sắt Sulfate, Kẽm sulfate, Đồng sulfate,&nbsp; Kali Iodide, Mangan Sulfate, Natri Selenate), Hương vanilin tổng hợp, Chất điều chỉnh độ axit axit Citric, Bifidobacterium lactis (Bifidus BL), Chất chống oxy hóa Ascorbyl Palmitate, Chất chống oxy hóa Tocopherol hỗn hợp.</p><h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3><p>Sữa Nan Optipro số 2&nbsp;là sản phẩm dinh dưỡng công thức từ Thụy Sĩ, bổ sung các dưỡng chất thiết yếu giúp hỗ trợ tiêu hóa, tăng cường sức đề kháng của trẻ. Công thức dinh dưỡng Nestlé Nan Optipro 2 từ Thụy Sĩ chứa:</p><p><i><strong>Đạm chất lượng Optipro</strong></i></p><p>Với tỷ lệ đạm Whey vượt trội giúp dễ tiêu hoá, dễ hấp thu, làm giảm thời gian làm trống dạ dày.</p><p><i><strong>Nestle HM-O 2\'FL</strong></i></p><p>Nan Optipro 2 bổ sung hàm lượng 0.25G/L 2\'FL HM-O giúp tăng cường sức đề kháng, giảm tỷ lệ bệnh vặt, giảm số lượng hại khuẩn đường ruột.</p><p><i><strong>Lợi khuẩn Bifidus BL</strong></i></p><p>Lợi khuẩn Bifidus BL giúp hỗ tăng sức đề kháng, hỗ trợ tiêu hóa.</p><p><i><strong>DHA và ARA, Omega 3, Omega 6</strong></i></p><p>Các axit béo đặc biệt quan trọng giúp hỗ trợ phát triển trí não và thị lực.&nbsp;</p><p><i><strong>Canxi và Vitamin D</strong></i></p><p>Canxi kết hợp cùng Vitamin D giúp phát triển thể chất, hệ xương chắc khỏe cho bé.<br><br>Nestlé Nan Optipro 2 được chứng nhận an toàn cho trẻ bởi FDA (Cục Quản lý Dược phẩm &amp; Thực phẩm Hoa Kỳ) và EFSA (Ủy ban ATTP Châu Âu)</p><h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3><p><i><strong>Cách pha chế</strong></i></p><p>- Rửa sạch tay trước khi pha cho trẻ.</p><p>- Rửa cốc và nắp đậy thật sạch. Đun sôi trong 5 phút. Đậy kín nắp đến khi sử dụng.</p><p>- Đun sôi nước và để nguội bớt (làm nguội nước bằng với nhiệt độ của cơ thể để đảm bảo những vi sinh vật có lợi còn sống)</p><p>- Theo sát bảng hướng dẫn cách pha. Đầu tiên, đổ nước ấm vào cốc. Sau đó, thêm chính xác số muỗng lường đã gạt ngang tương ứng với độ tuổi của trẻ.</p><p>- Đảm bảo muỗng lường khô ráo rồi đặt lại vào hộp. Đậy nắp kín sau mỗi lần sử dụng và bảo quản nơi khô ráo, thoáng mát.</p><p>- Đậy nắp và lắc hoặc khuấy đều cho đến khi bột được hòa tan hoàn toàn. Kiểm tra nhiệt độ trước khi cho trẻ uống.</p><h3><strong>Hướng dẫn bảo quản sản phẩm</strong></h3><p>- Bảo quản nơi khô ráo, thoáng mát. Tránh ánh nắng trực tiếp.</p><p>- Nên sử dụng trong vòng 3 tuần sau khi mở hộp.</p>', '1669969682nan2.jpg', 63, 11, 1, 0, 0),
(91, 'Thùng 48 hộp sữa tươi ít đường Vinamilk 180ml', 336000, '<h2>Thông tin sản phẩm</h2><p>Được chế biến từ nguồn <a href=\"https://www.bachhoaxanh.com/sua-tuoi\">sữa tươi</a> 100% chứa nhiều dưỡng chất như vitamin A, D3, canxi,... tốt cho xương và hệ miễn dịch,&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-tuoi-vinamilk\">sữa tươi Vinamilk</a> là thương hiệu được tin dùng hàng đầu với chất lượng tuyệt vời.&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-tuoi/stt-vinamilk-it-duong-hop-180ml-48\">Thùng 48 hộp sữa tươi ít đường Vinamilk 100% Sữa Tươi 180ml</a>&nbsp;thơm ngon tiện lợi.</p>', '1669969774thung-48-hop-sua-tuoi-it-duong-vinamilk-100-sua-tuoi-180ml-202006050938299298.jpg', 33, 6, 1, 0, 0),
(92, 'Sữa Nan Organic số 2 900g (6 - 24 tháng tuổi)', 579000, '<p><strong>Sữa Nan Organic số 2 900g</strong>&nbsp;là sản phẩm dinh dưỡng công thức hữu cơ dành cho trẻ từ 6 dến 24 tháng tuổi được chứng nhận hữu cơ của NASAA. Nan Organic 2 cung cấp cho trẻ các chất dinh dưỡng hỗ trợ cho sự phát triển khỏe mạnh về thể chất và trí não.</p><h3>ặc điểm nổi bật của sản phẩm</h3><p><i><strong>Thành phần dinh dưỡng&nbsp;</strong></i></p><p>Sữa bột Nan Organic số 2 900g bao gồm các thành phần: Lactose hữu cơ, sữa tách béo (skimmed MILK) hữu cơ, dầu hướng dương giàu Oleic, đạm whey (WHEY PROTEIN) hữu cơ, dầu hạt cải có hàm lượng axit Erucic thấp, Fructo-oligosacarit, dầu hướng dương, Trisodium Citrate dehydrate, chất nhũ hóa Lecithin đậu nành (SOYA lecithin), Canxi Hydroxit, Kali Clorua, Magiê Chloride Hexahydrate, Vitamin C, Canxi hydro Phosphate dihydrate, dầu tảo giàu DHA, dầu nấm giàu ARA, Natri hydro cacbonat, Kali citrat, sắt Sulfate Heptahydrate, chất điều chỉnh độ axit Citric, kẽm sulfat, dầu đậu nành (SOYA bean oil), chất chống oxy hóa hỗn hợp Tocopherol, Nicotinamide, Vitamin E, Vitamin B5, đồng sulfat Pentahydrate, Vitamin A, Vitamin B1, Vitamin B6, Vitamin D3, Axit Folic, Kali iođua, chất chống oxy hóa Ascorbyl palmitat, Vitamin K1, Biotin, Vitamin B12.</p><p><i><strong>Điểm nổi bật của sản phẩm&nbsp;</strong></i></p><p>- Các thành phần từ sữa: các thành phần của sữa bột Nan Organic số 2 900g được sản xuất từ 100% sữa hữu cơ có nguồn gốc từ các trang trại bò sữa hữu cơ, tuân thủ các yêu cầu hữu cơ nghiêm ngặt nhất</p><p>- Đạm whey: Đạm có chất lượng giúp trẻ dễ tiêu hóa, dễ hấp thu để phát triển khỏe mạnh.</p><p>-&nbsp;Vitamin C,D và Kẽm: Hỗ trợ tăng sức đề kháng cho trẻ</p><p>- DHA và ARA: Hỗ trợ phát triển trí não và thị lực Nan Organic 2 với các thành phần đáp ứng tiêu chuẩn hữu cơ khắt khe của NASAA, cơ quan chứng nhận hữu cơ của Úc.</p><p>- Những thành phần có nguồn gốc từ tự nhiên xuất phát từ những trang trại nuôi trồng hữu cơ, những con bò phải đảm bảo được sống trong môi trường có không khí trong lành và ăn các thức ăn hữu cơ.&nbsp;&nbsp;</p><h3>Hướng dẫn sử dụng&nbsp;</h3><p><i><strong>Cách pha chế</strong></i></p><p>- Rửa sạch tay trước khi pha Nestlé® NAN® ORGANIC® 2 cho trẻ.<br>- Rửa cốc và nắp đậy cho đến khi không còn bợn bẩn.<br>- Đun sôi cốc và nắp đậy trong 5 phút. Đậy nắp kín cho đến khi sử dụng<br>- Đun sôi nước trong 5 phút, để nguội bớt.<br>- Tham khảo bảng hướng dẫn cách pha, rót chính xác lượng nước ấm cần dùng vào cốc đã được luộc.<br>- Chỉ dùng muỗng lường trong hộp và gạt ngang muỗng lường vào mép gờ của thành hộp.<br>- Tham khảo bảng hướng dẫn cách pha, thêm chính xác số lượng muỗng lường (gạt ngang) tương ứng với độ tuổi của trẻ.<br>- Sau khi dùng, đặt muỗng lường trên giá treo bên trong hộp.<br>- Đậy nắp và lắc hoặc khuấy cho đều đến khi bột được hòa tan hoàn toàn và cho trẻ uống liền. Không giữ lại phần thừa nếu trẻ không uống hết.</p><p><i><strong>Bảo quản</strong></i></p><p>- Đậy kín nắp hộp sau mỗi lần sử dụng và bảo quản nơi khô ráo.</p><p>- Nên sử dụng trong vòng 3 tuần sau khi mở hộp.</p><p>- Hạn sử dụng: 24 tháng</p>', '1669969799nanxanh2.jpg', 98, 11, 1, 0, 0),
(93, 'Thùng 12 hộp sữa tươi tiệt trùng ít béo Harvey Fresh 1 lít', 430000, '<h2>Thông tin sản phẩm</h2><p>Là sản phẩm <a href=\"https://www.bachhoaxanh.com/sua-tuoi\">sữa tươi</a> được sản xuất tại Úc,&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-tuoi-harvey-fresh\">sữa tươi Harvey Fresh</a>&nbsp;cung cấp cho cơ thể canxi, protein và năng lượng dồi dào, giúp bạn ngập tràn năng lượng, cơ thể khoẻ mạnh hơn. <a href=\"https://www.bachhoaxanh.com/sua-tuoi/thung-sua-tuoi-tiet-trung-harvey-fresh-it-beo-hop-1-lit-12-hop\">Thùng 12 hộp sữa tươi tiệt trùng ít béo Harvey Fresh 1 lít</a> giảm bớt lượng chất béo nhưng sữa vẫn dinh dưỡng cho bạn</p>', '1669969874thung-12-hop-sua-tuoi-tiet-trung-it-beo-harvey-fresh-1-lit-202110252231199197.jpg', 54, 9, 10, 0, 0),
(94, 'Sữa Nan Optipro số 4 1.7kg (2 - 6 tuổi)', 639000, '<p><strong>Sữa Nan Optipro số 4</strong>&nbsp;1.7kg&nbsp;là sản phẩm dinh dưỡng công thức từ Thụy Sĩ, bổ sung các dưỡng chất thiết yếu giúp hỗ trợ tiêu hóa, tăng cường sức đề kháng của trẻ trong giai đoạn 2 - 6 tuổi. Công thức dinh dưỡng của&nbsp;Nan Optipro 4&nbsp;chứa đạm chất lượng Optipro độc quyền từ Nestlé Thụy Sĩ với tỷ lệ đạm Whey vượt trội giúp dễ tiêu hóa, dễ hấp thu. Đặc biệt, sự bổ sung mới từ&nbsp;Nestlé HM-O 2\'FL với hàm lượng thích hợp&nbsp;giúp tăng cường sức đề kháng, giảm ốm vặt cho trẻ. Ngoài ra, sản phẩm còn chứa&nbsp;DHA và ARA, Omega 3, Omega 6 hỗ trợ tối ưu cho quá trình phát triển não bộ và thị lực của bé.</p><h3><strong>Thành phần sản phẩm</strong></h3><p>SỮA bột tách kem (skimmed MILK),&nbsp; LACTOSE (từ SỮA), ĐẠM chất lượng OPTIPRO (ĐẠM WHEY-WHEY PROTEIN từ SỮA), Dầu hướng dương giàu Oleic, Dầu ĐẬU NÀNH (SOYA bean oil), Dầu dừa, Canxi Citrate, Natri Citrate, Chất nhũ hóa Lecithin ĐẬU NÀNH (SOYA lecithin), Glucose Syrup, Chất nhũ hóa monoglycerides, Kali Phosphate, 2\'-O-Fucosyllactose (2\'- FL), Dầu cá giàu DHA (FISH oil high DHA), Các Vitamin (C,Nicotinamide, E, B5, A, B1, B6, B2, Axit Folic, K1, Biotin, D3, B12), Maltodextrin, Natri clorid, Dầu nấm giàu ARA, Các khoáng chất (Sắt Sulfate, Kẽm sulfate, Đồng sulfate,&nbsp; Kali Iodide, Mangan Sulfate, Natri Selenate), Hương vanilin tổng hợp, Chất điều chỉnh độ axit axit Citric, Bifidobacterium lactis (Bifidus BL), Chất chống oxy hóa Ascorbyl Palmitate, Chất chống oxy hóa Tocopherol hỗn hợp.</p><h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3><p>Sữa Nan Optipro số 4&nbsp;là sản phẩm dinh dưỡng công thức từ Thụy Sĩ, bổ sung các dưỡng chất thiết yếu giúp hỗ trợ tiêu hóa, tăng cường sức đề kháng của trẻ. Công thức dinh dưỡng Nestlé Nan Optipro 4 từ Thụy Sĩ chứa:</p><p><i><strong>Đạm chất lượng Optipro</strong></i></p><p>Với tỷ lệ đạm Whey vượt trội giúp dễ tiêu hoá, dễ hấp thu, làm giảm thời gian làm trống dạ dày.</p><p><i><strong>Nestle HM-O 2\'FL</strong></i></p><p>Nan Optipro bổ sung hàm lượng 0.35G/L 2\'FL HM-O giúp tăng cường sức đề kháng, giảm tỷ lệ bệnh vặt, giảm số lượng hại khuẩn đường ruột.</p><p><i><strong>Lợi khuẩn Bifidus BL</strong></i></p><p>Lợi khuẩn Bifidus BL giúp hỗ tăng sức đề kháng, hỗ trợ tiêu hóa.</p><p><i><strong>DHA và ARA, Omega 3, Omega 6</strong></i></p><p>Các axit béo đặc biệt quan trọng giúp hỗ trợ phát triển trí não và thị lực.&nbsp;</p><p><i><strong>Canxi và Vitamin D</strong></i></p><p>Canxi kết hợp cùng Vitamin D giúp phát triển thể chất, hệ xương chắc khỏe cho bé.<br><br>Nestlé Nan Optipro 4 được chứng nhận an toàn cho trẻ bởi FDA (Cục Quản lý Dược phẩm &amp; Thực phẩm Hoa Kỳ) và EFSA (Ủy ban ATTP Châu Âu)</p><h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3><p><i><strong>Cách pha chế</strong></i></p><p>- Rửa sạch tay trước khi pha cho trẻ.</p><p>- Rửa cốc và nắp đậy thật sạch. Đun sôi trong 5 phút. Đậy kín nắp đến khi sử dụng.</p><p>- Đun sôi nước và để nguội bớt (làm nguội nước bằng với nhiệt độ của cơ thể để đảm bảo những vi sinh vật có lợi còn sống)</p><p>- Theo sát bảng hướng dẫn cách pha. Đầu tiên, đổ nước ấm vào cốc. Sau đó, thêm chính xác số muỗng lường đã gạt ngang tương ứng với độ tuổi của trẻ.</p><p>- Đảm bảo muỗng lường khô ráo rồi đặt lại vào hộp. Đậy nắp kín sau mỗi lần sử dụng và bảo quản nơi khô ráo, thoáng mát.</p><p>- Đậy nắp và lắc hoặc khuấy đều cho đến khi bột được hòa tan hoàn toàn. Kiểm tra nhiệt độ trước khi cho trẻ uống.</p><p><i><strong>Hướng dẫn cách pha</strong></i></p><p>* Làm nguội nước (bằng với nhiệt độ của cơ thể) khi pha để đảm bảo những vi sinh vật có lợi còn sống.</p><p>** Chỉ dùng muỗng lường trong hộp.</p><p>*** Trẻ 2 - 6 tuổi cần được bổ sung một chế độ dinh dưỡng lành mạnh bên cạnh việc sử dụng sản phẩm dinh dưỡng công thức.</p><h3><strong>Hướng dẫn bảo quản sản phẩm</strong></h3><p>- Bảo quản nơi khô ráo, thoáng mát. Tránh ánh nắng trực tiếp.</p><p>- Nên sử dụng trong vòng 3 tuần sau khi mở hộp.</p>', '1669969911sua-nan-optipro-so-4-1.7kg.jpg', 154, 11, 1, 0, 0),
(95, 'Thùng 12 hộp sữa tiệt trùng Mleko Zambrowskie 1.5% béo 1 lít', 400000, '<p><a href=\"https://www.bachhoaxanh.com/sua-tuoi/thung-12-hop-sua-tiet-trung-mleko-zambrowskie-15-beo-1-lit\">Thùng 12 hộp sữa tiệt trùng Mleko Zambrowskie 3.2% béo 1 lít</a> là dòng&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-tuoi-mleko-zambrowskie\">sữa tươi</a> tiệt trùng với độ béo thấp. Sản phẩm đến từ thương hiệu <a href=\"https://www.bachhoaxanh.com/sua-tuoi-mleko-zambrowskie\">sữa tươi&nbsp;Mleko Zambrowskie</a>&nbsp;với thành phần 100% nguyên chất, không chất bảo quản, giá tốt, tiện lợi, phù hợp cho gia đình dùng trực tiếp hoặc làm nguyên liệu chế biến.</p>', '1669969919thung-12-hop-sua-tiet-trung-mleko-zambrowskie-15-beo-1-lit-202204121114283503.jpg', 22, 9, 10, 0, 0),
(96, 'Sữa Nan Supreme HMO số 2 800g (6 - 24 tháng)', 535000, '<p><strong>Sữa Nan Supreme HMO số 2</strong> là công thức Nan cải tiến lần đầu tiên bổ sung HMO 2\'-FL &amp; LNnT giúp tăng cường sức đề kháng tối ưu cho trẻ trong giai đoạn từ 6 - 24 tháng tuổi. Nan Supreme HMO sử dụng nguồn đạm chất lượng Optipro thủy phân một phần (HA) để trẻ dễ tiêu hóa, dễ hấp thu và phòng ngừa nguy cơ dị ứng (chàm sữa). Bên cạnh đó, Nan tiếp tục duy trì hệ lợi khuẩn Bifidus BL hỗ trợ hệ miễn dịch đường ruột và không thể thiếu DHA &amp; ARA - hỗn hợp axit béo có trong sữa giúp phát triển trí não và thị lực cho trẻ ngay từ giai đoạn đầu đời.</p><h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3><p><i><strong>Công thức HMO 2\'-FL &amp; LNnT tăng cường đề kháng</strong></i></p><p>- Sữa Nan Supreme HMO số 2 là công thức Nan cải tiến đầu tiên bổ sung bộ đôi HM-O gồm 2\'-FL &amp; LNnT đã được nhiều nghiên cứu khoa học cho thấy giúp tăng cường sức đề kháng cho trẻ.</p><p>- Các nghiên cứu khoa học cho thấy Oligosaccharides&nbsp;HMOs giúp tăng cường sức đề kháng của trẻ. Trong đó, sự kết hợp của bộ đôi&nbsp;HMOs gồm&nbsp;2\'-FL &amp; LNnT giúp giảm nguy cơ viêm phế quản, nhiễm trùng hô hấp dưới, giảm việc sử dụng kháng sinh và thuốc hạ sốt cho trẻ.</p><p><i><strong>Đạm chất lượng Optipro giảm nguy cơ dị ứng</strong></i></p><p>Phát minh độc quyền đến từ Nestlé Thụy Sĩ cho ra đời đạm chất lượng Optipro thủy phân một phần (HA) với hàm lượng vừa đủ cần thiết cho sự phát triển khỏe mạnh lâu dài và cân đối mà không gây quá tải cho các cơ quan còn non nớt của trẻ. Đạm chất lượng giúp trẻ dễ dàng tiêu hóa, dễ dàng hấp thu và phòng ngừa nguy cơ dị ứng (chàm sữa).</p><p><i><strong>Probiotics Bifidus BL tăng cường miễn dịch đường ruột</strong></i></p><p>Thành phần sữa bổ sung hệ Probiotics Bifidus BL - vi sinh vật có lợi cho hệ tiêu hóa và miễn dịch. Vi khuẩn sống probiotic duy trì một đường ruột khỏe mạnh, cho hệ tiêu hóa hoạt động tốt, phòng ngừa táo bón hiệu quả, hỗ trợ bé hấp thu tốt các dưỡng chất để phát triển khỏe mạnh. Ngoài ra còn có tác dụng hỗ trợ sức đề kháng tối ưu cho trẻ để phòng chống các tác nhân gây bệnh.</p><p><i><strong>DHA &amp; ARA hỗ trợ phát triển trí não</strong></i></p><p>Sữa Nan Supreme HMO số 2 chứa hỗn hợp axit béo DHA và ARA là những dưỡng chất thiết yếu cho cấu trúc não bộ, chức năng thị giác và sức khoẻ toàn diện của trẻ, từ đó giúp phát triển trí não và thị lực cho trẻ.</p><h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3><p><i><strong>Cách pha sữa</strong></i></p><p>&nbsp;</p><p>- Rửa sạch tay trước khi pha sữa cho trẻ.</p><p>- Rửa cốc và nắp đậy cho đến khi không còn bợn bẩn.</p><p>- Đun sôi cốc và nắp đậy trong 5 phút. Đậy nắp kín cho đến khi sử dụng.</p><p>- Đun sôi nước uống trong 5 phút, để nguội bớt (làm nguội nước bằng với nhiệt độ cơ thể).</p><p>- Tham khảo bảng hướng dẫn cách pha, rót chính xác lượng nước ấm cần dùng vào cốc đã được luộc</p><p>- Chỉ dùng muỗng lường trong hộp và gạt ngang muỗng lường vào mép/gờ của thành hộp</p><p>- Tham khảo bảng hướng dẫn cách pha, thêm chính xác số lượng muỗng lường (gạt ngang) tương ứng với độ tuổi của trẻ.</p><p>- Sau khi dùng, đặt muỗng lường trên giá treo bên trong hộp.</p><p>- Đậy nắp và lắc hoặc khuấy cho đều đến khi bột được hòa tan hoàn toàn và cho trẻ uống liền.</p><h3><strong>Hướng dẫn bảo quản sản phẩm</strong></h3><p>- Bảo quản sản phẩm nơi khô ráo thoáng mát, tránh ánh nắng trực tiếp.</p><p>- Đậy kín nắp hộp sau mỗi lần sử dụng.</p><p>- Nên sử dụng trong vòng 3 tuần sau khi mở hộp.</p>', '1669970008sua-nan-so-2-800g-1.jpg', 163, 11, 1, 0, 0),
(97, 'Sữa Nan Nga số 1 400g (0 - 6 tháng)', 265000, '<p>Với đạm chất lượng Optipro,<a href=\"https://bibomart.com.vn/nestle.html\"><strong>sữa Nan</strong></a><strong>&nbsp;Nga&nbsp;số 1</strong>&nbsp;cung cấp một hàm lượng protein vừa đủ cần thiết cho sự phát triển khỏe mạnh lâu dài mà không gây quá tải cho các cơ quan còn non nớt của trẻ. Hệ lợi khuẩn Bifidus BL bổ sung các vi sinh vật có lợi Probiotics giúp hệ tiêu hóa của bé hoạt động tốt hơn, tăng cường hệ miễn dịch đường ruột cho trẻ để trẻ hấp thu các chất dinh dưỡng một cách tự nhiên và phòng chống các tác nhân gây bệnh hiệu quả. DHA và ARA - axit béo thông minh cũng được bổ sung trong sữa hỗ trợ tốt cho sự phát triển trí não và thị lực của bé ngay từ giai đoạn đầu đời.</p><h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3><p><i><strong>Tăng cường sức đề kháng và tốt cho hệ tiêu hóa</strong></i></p><p><a href=\"https://bibomart.com.vn/sua-nan.html\">Sữa Nan Nga</a>&nbsp;số 1&nbsp;giúp tăng cường sức đề kháng cho trẻ nhờ bổ sung hệ Probiotics Bifidus BL - vi sinh vật có lợi cho hệ tiêu hóa và miễn dịch. Vi khuẩn sống probiotic duy trì một đường ruột khỏe mạnh, cho hệ tiêu hóa hoạt động tốt, phòng ngừa táo bón hiệu quả, hỗ trợ bé hấp thu tốt các dưỡng chất để nhanh chóng tăng cân, chắc khỏe xương. Ngoài ra còn có tác dụng hỗ trợ sức đề kháng tối ưu cho trẻ để phòng chống các tác nhân gây bệnh.&nbsp;</p><p><i><strong>Giúp bé phát triển tốt về thể lực</strong></i></p><p><a href=\"https://bibomart.com.vn/nestle.html\">Sữa Nan</a>&nbsp;Nga số 1&nbsp;mang đến hệ dưỡng chất cân bằng bởi đạm, chất béo, carbonhydrat và các&nbsp;vitamin&nbsp;cung cấp đủ năng lượng phục vụ cho các hoạt động trong ngày của bé. Đặc biệt, phát minh độc quyền đến từ Nestle Thụy Sĩ cho ra đời đạm chất lượng Optipro với hàm lượng vừa đủ cần thiết cho sự phát triển khỏe mạnh lâu dài và cân đối mà không gây quá tải cho các cơ quan còn non nớt của trẻ.</p><p><i><strong>Hỗ trợ phát triển trí não</strong></i></p><p>- Sữa Nan Nga 1 chứa hỗ hợp axit béo DHA và ARA là những dưỡng chất thiết yếu cho cấu trúc não bộ, chức năng thị giác và sức khoẻ toàn diện của trẻ, từ đó giúp phát triển trí não và thị lực cho trẻ.</p><p>- Các vi chất khác như sắt, I-ốt và kẽm hỗ trợ chức năng nhận thức ở trẻ, bước đầu cho một trí tuệ phát triển.</p><h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3><p><i><strong>Hướng dẫn pha sữa cho bé</strong></i><br><br>- Hãy rửa sạch tay trước khi bắt đầu pha sữa<br><br>- Rửa kỹ chai, núm vú giả và nắp đậy sao cho không còn đọng lại sữa<br><br>- Tiệt trùng bằng cách đun sôi kỹ trong 5 phút. Đậy kín cho đến khi sử dụng.<br><br>- Đun sôi nước trong 5 phút và sau đó để nguội xuống 37 độ C<br><br>- Dựa theo bảng hướng dẫn, rót 1 lượng nước ấm đong chính xác vào bình đã tiệt trùng<br><br>- Chỉ sử dụng muỗng đong cung cấp sẵn trong hộp sữa, mỗi muỗng múc không quá đầy.<br><br>- Dựa theo bảng hướng dẫn, thêm số muỗng bột đong chính xác phù hợp với độ tuổi của trẻ<br><br>- Sau khi sử dụng, đặt muỗng đong vào khe trong hộp sữa<br><br>- Lắc bình cho đến khi bột hòa tan hoàn toàn<br><br>- Sau khi pha, hãy đậy kín hộp sữa và bảo quản tại nơi khô ráo thoáng mát.</p><p><br><strong>Hướng dẫn bảo quản sản phẩm</strong></p><p><br>- Trước và sau khi mở sản phẩm phải bảo quản ở nhiệt độ không quá 25 độ C và độ ẩm không khí tương đối không quá 75%<br><br>- Sử dụng sữa trong 3 tuần sau khi mở nắp, không bảo quản trong tủ lạnh.</p>', '1669970123sua-nan-nga-so-1-400g-1.jpg', 235, 11, 1, 0, 0),
(98, 'Sữa Friso Gold 1 800g Nội Địa Nga | Trẻ 0-6 Tháng Tuổi, Nguồn Sữa Mát Lành, Trẻ Dễ Tiêu Hóa, Hấp Thu | Hãng Friso, Hàng Nội Địa Nga', 40000, '<h2><strong>Sữa Friso Gold&nbsp;1&nbsp;800g Nội Địa Nga&nbsp;| Trẻ 0-6&nbsp;Tháng Tuổi, Nguồn Sữa Mát Lành, Trẻ Dễ Tiêu Hóa, Hấp Thu | Hãng Friso, Hàng Nội Địa Nga</strong></h2><h2><strong>Sữa&nbsp;Friso Gold 1&nbsp;800g l</strong>à sản phẩm hãng Frisoland&nbsp;nhập khẩu về Việt nam từ Nga. Sản phẩm dành cho bé từ 0-6&nbsp;tháng tuổi phát triển toàn diện, sữa mát đặc biệt phù hợp cho trẻ cơ địa nóng, dễ đi táo, sản phẩm&nbsp;được các bà mẹ Việt tin dùng nhờ những đặc tính hoàn hảo dành cho trẻ sơ sinh.</h2><h2><strong>1. Đối Tượng Sử Dụng&nbsp;Sữa&nbsp;Friso Gold 1 800g Nội Địa Nga</strong></h2><p>+ Dành cho trẻ&nbsp;từ 0-6&nbsp;tháng tuổi phát triển toàn diện</p><p>+ Sữa mát đặc biệt phù hợp cho trẻ cơ địa nóng, hay bị&nbsp;đi táo. Bên cạnh đó vẫn bỏ sung đầy đủ dưỡng chất giúp trẻ phát triển toàn diện</p><h2><strong>2.&nbsp;Sữa&nbsp;Sữa&nbsp;Friso Gold 1 800g Nội Địa Nga&nbsp;Có Tốt Không ? Thành Phần Và Công Dụng</strong></h2><p><strong>Uống Sữa&nbsp;Friso GoldNga có tăng cân không?</strong></p><p>+ Sữa&nbsp;Friso Gold&nbsp;Nga không phải là dòng sữa chủ đạo tăng cân. Bởi thế, khi sử dụng sữa cho bé, các mẹ sẽ thấy cân nặng của con được cải thiện từ từ chứ không tăng nhanh như các dòng sữa nhập khẩu khác.</p><p>&nbsp;+ Cơ chế tăng cân của sữa&nbsp;Friso Gold&nbsp;Nga là: xây dựng một hệ đường ruột khỏe mạnh cho bé, cải thiện khả năng hấp thu dinh dưỡng.</p><p>+ Đồng thời, bổ sung các loại vitamin và khoáng chất cần thiết cho cơ thể. Tuy nhiên, dinh dưỡng của sữa&nbsp;Friso Gold&nbsp;Nga không quá đậm đặc như sữa S26, Aptamil...Bởi thế, bé chỉ nhận được nguồn năng lượng cần thiết chứ ít dư thừa.</p><p>&nbsp;+ Bé hợp với sữa, hấp thu tốt có thể tăng cân từ 1kg – 2kg/ tháng. Nếu bé hiếu động hơn thì mức độ tăng cân sẽ không nhiều bằng.</p><p>----------------</p><p><strong>Sữa&nbsp;Friso Gold&nbsp;Nga có giúp bé chống táo bón không?</strong></p><p>+ Sữa&nbsp;Friso Gold&nbsp;Nga nổi tiếng là dòng sữa&nbsp;mát, chống táo bón tốt cho bé.</p><p>+ Thế nên, nếu bé có cơ địa nóng trong, hay bị táo bón, các mẹ có thể chọn ngay sữa&nbsp;Friso Gold&nbsp;Nga để sử dụng.</p>', '1669970148sua_bot_friso_gold_1_800g_hang_noi_dia_nga_babivina.jpg', 11, 12, 1, 0, 0),
(99, 'Sữa bột Frisolac Gold số 1 lon 400g', 259000, '<h2>Thông tin sản phẩm</h2><p>Với công thức LockNutri, <a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be\">sữa bột cho bé</a>&nbsp;hỗ trợ hệ miễn dịch, tăng trưởng và sự phát triển toàn diện của trẻ.&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be-frisolac\">Sữa bột cho bé Frisolac</a>&nbsp;có chứa&nbsp;Vitamin D, Kẽm, Selen, Taurin, DHA, Prebiotics (GOS), Probiotics, Nucleotides, Canxi.&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be/sua-bot-frisolac-gold-1-lon-400g\">Sữa bột Frisolac Gold 1 lon 400g (0 - 6 tháng)</a> lon nhỏ tiện dùng cho mẹ</p>', '16701678831_1-1-1@2x-1.jpg', 55, 12, 10, 0, 0),
(100, 'Sữa bột Frisolac Gold số 3 lon 380g', 285000, '<h2>Thông tin sản phẩm</h2><p><a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be-frisolac\">Sữa bột cho bé Frisolac</a> là sản phẩm dành riêng cho bé yêu được các bà mẹ tin dùng và lựa chọn. <a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be\">Sữa bột cho bé</a>&nbsp;giúp bé tiêu hóa tốt hơn, khỏe hơn, tăng cường miễn dịch và tăng trưởng phát triển toàn diện, cho mẹ yên tâm.&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be/sua-bot-frisolac-gold-3-lon-380g-1-2-tuoi\">Sữa bột Frisolac Gold 3 lon 380g (1 - 2 tuổi)</a> nguồn dinh dưỡng vô tận cho bé</p>', '16701679001669737252Untitled.png', 23, 12, 1, 0, 0),
(101, 'Sữa bột Frisolac Gold số 2 lon 380g', 289000, '<h2>Thông tin sản phẩm</h2><p><a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be-frisolac\">Sữa bột cho bé Frisolac</a> là sản phẩm dành riêng cho bé yêu được các bà mẹ tin dùng và lựa chọn. <a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be\">Sữa bột cho bé</a>&nbsp;giúp bé tiêu hóa tốt hơn, khỏe hơn, tăng cường miễn dịch và tăng trưởng phát triển toàn diện.&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be/sua-bot-frisolac-gold-2-lon-380g-6-12-thang\">Sữa bột Frisolac Gold 2 lon 380g (6 - 12 tháng)</a>&nbsp;cho bé cứng cáp hơn</p>', '1669970609sua-bot-frisolac-gold-2-lon-380g-6-12-thang-202111192111494828.jpg', 22, 12, 1, 0, 0),
(102, 'Sữa bột Frisolac Gold số 1 lon 400g', 259000, '<p>Với công thức LockNutri, <a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be\">sữa bột cho bé</a>&nbsp;hỗ trợ hệ miễn dịch, tăng trưởng và sự phát triển toàn diện của trẻ.&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be-frisolac\">Sữa bột cho bé Frisolac</a>&nbsp;có chứa&nbsp;Vitamin D, Kẽm, Selen, Taurin, DHA, Prebiotics (GOS), Probiotics, Nucleotides, Canxi.&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-bot-cong-thuc-cho-be/sua-bot-frisolac-gold-1-lon-400g\">Sữa bột Frisolac Gold 1 lon 400g (0 - 6 tháng)</a> lon nhỏ tiện dùng cho mẹ</p>', '1669970737sua-bot-frisolac-gold-1-lon-400g-2.jpg', 25, 12, 1, 0, 0),
(106, 'SỮA FRISO GOLD 1-2-3-4-5 ( Loại 400g, 900g, 1.5kg)', 797000, '<p>MÔ TẢ SẢN PHẨM</p><p>*Sữa Friso Gold dành cho trẻ dưới 2 tuổi Đầu tiên, để nói về dòng sữa Frisolac Gold thì có 3 loại là Frisolac Gold 1, 2, 3 lần lượt cho các mẹ chọn lựa. Frisolac Gold 1 cho trẻ từ 0-6 tháng tuổi. Frisolac Gold 2 cho trẻ từ 6-12 tháng tuổi. Frisolac Gold 3 cho trẻ từ 1-2 tuổi. Giai đoạn sơ sinh là giai đoạn trẻ phát triển nhanh chóng để đạt tối đa tiềm năng tăng trưởng. Và Sữa mẹ vẫn là thức ăn tốt nhất cho trẻ sơ sinh và trẻ nhỏ. Nên Frisolac Gold chỉ nên dùng trong các trường hợp trẻ không thể hoặc không được nuôi bằng sữa mẹ. Frisolac Gold 1, 2 ,3 là công thức dinh dưỡng cho trẻ lần lượt từ 0-6 tháng tuổi, 6-12 tháng tuổi và 1-2 tuổi. Dòng sữa này cung cấp đa vi chất dinh dưỡng vitamin A, C, E và các chất khoáng selen, kẽm, 5 loại nucleotit và chất xơ GOS giúp hỗ trợ sức khỏe đường ruột của trẻ, và DHA, AA hỗ trợ phát triển trí não. Frisolac Gold không chỉ giúp trẻ có sức đề kháng tốt hơn, trí não thông minh hơn mà hệ xương cũng phát triển tốt hơn. Do vậy, việc của mẹ chỉ là cần chọn sữa cho con đúng theo độ tuổi. Và thêm vào đó, là theo dõi con có hợp sữa hay không mà thôi. * Sữa Friso Gold dành cho trẻ trên 2 tuổi Dòng sữa Friso Gold dành cho trẻ bao gồm Friso Gold 4 và 5. Friso Gold 4 dành cho trẻ từ 2- 4 tuổi. Friso Gold 5 dành cho trẻ trên 4 tuổi. Từ 2 tuổi trở lên, trẻ lúc nào cũng luôn vận động và có muôn vàn những câu hỏi. Do vậy, Friso Gold 4 và 5 đều sẵn sáng những dưỡng chất cho cả sự phát triển về thể chất và tinh thân của bé. Cụ thể, Friso Gold 4 và Friso Gold 5 cung cấp cho bé Kẽm, Sắt và Nucleotide, hỗ trợ sức đề kháng cơ thể tự nhiên cho bé. Vậy nên bé có thể thoải mái trải nghiệm và khám phá thế giới cùng mẹ và bố. Ngoài ra, Friso Gold cung cấp các dưỡng hỗ trợ giúp trẻ phát triển toàn diện. Đặc biệt, trong đó không thể thiếu các chất như Vitamin D, Taurin, Selen, DHA, Prebiotics, Probiotics và Canxi.</p>', '16699709982c9d617d183f04650a42a625e6abbfb5.jpg', 14, 9, 1, 0, 0),
(111, 'test', 1, '<p>đấ</p>', '16711710562.jpg', 1, 7, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Lớn'),
(2, 'Nhỏ'),
(3, 'Vừa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `id_products`, `id_type`) VALUES
(12, 25, 3),
(14, 26, 2),
(15, 26, 3),
(17, 28, 2),
(18, 28, 3),
(19, 29, 1),
(20, 29, 2),
(21, 30, 1),
(22, 30, 3),
(23, 31, 1),
(24, 31, 2),
(25, 32, 2),
(26, 32, 3),
(37, 43, 3),
(39, 55, 2),
(50, 65, 2),
(52, 66, 2),
(54, 67, 1),
(55, 67, 2),
(56, 68, 3),
(58, 69, 2),
(62, 71, 2),
(64, 72, 2),
(66, 73, 1),
(67, 73, 2),
(68, 74, 1),
(69, 74, 2),
(70, 75, 1),
(71, 75, 2),
(72, 76, 2),
(73, 77, 2),
(74, 78, 2),
(75, 79, 2),
(76, 80, 2),
(77, 81, 2),
(78, 82, 1),
(79, 82, 2),
(80, 83, 1),
(81, 83, 2),
(82, 84, 2),
(83, 84, 3),
(84, 85, 1),
(85, 86, 2),
(86, 87, 2),
(87, 87, 3),
(88, 88, 3),
(89, 89, 1),
(91, 90, 2),
(92, 90, 3),
(93, 91, 3),
(94, 92, 2),
(95, 92, 3),
(97, 94, 2),
(98, 94, 3),
(99, 95, 3),
(100, 96, 2),
(101, 96, 3),
(102, 97, 2),
(103, 97, 3),
(104, 98, 1),
(107, 101, 3),
(108, 102, 3),
(112, 106, 3),
(117, 24, 1),
(118, 24, 2),
(119, 24, 3),
(120, 99, 3),
(121, 100, 3),
(122, 27, 2),
(123, 27, 3),
(124, 39, 2),
(125, 39, 3),
(131, 111, 2),
(132, 111, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL DEFAULT 'login.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `phone`, `pass`, `role`, `image`) VALUES
(1, 'Vũ', 'admin@gmail.com', 356277440, 'admin', 2, '256x256bb.jpg'),
(3, 'client', 'client@gmail.com', 999999999, 'client', 1, '256x256bb.jpg'),
(4, 'o', 'duong@gmail.com', 99999999, 'duong', 1, 'login.png'),
(5, 'Lê Quý Dươngss', 'quyduong@gmail.com', 99999999, 'quyduong', 1, '1.png'),
(7, 'Nguyễn Văn ', 'thivpph24307@fpt.edu.vn', 123456789, 'Vuphuthi114477', 1, '256x256bb.jpg'),
(10, 'duynguyen', 'duy@gmail.com', 13123343, 'duycon2003', 1, 'login.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_fk0` (`id_user`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_detail_fk0` (`id_products`),
  ADD KEY `bill_detail_fk1` (`id_bill`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_fk0` (`id_user`),
  ADD KEY `comments_ibfk_1` (`id_pro`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`brand_id`),
  ADD KEY `products_ibfk_2` (`category_id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_products_fk0` (`id_products`),
  ADD KEY `type_products_fk1` (`id_type`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_fk0` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_fk0` FOREIGN KEY (`id_products`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bill_detail_fk1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_fk0` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Các ràng buộc cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD CONSTRAINT `type_products_fk0` FOREIGN KEY (`id_products`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `type_products_fk1` FOREIGN KEY (`id_type`) REFERENCES `types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
