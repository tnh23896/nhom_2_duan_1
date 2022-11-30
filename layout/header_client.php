<?php if (is_login()) {
    $user = get_login();
};
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $title ?></title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}
/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>
</head>

<body class="bg-[#F9F9F9]">
    <div class="container w-full m-auto font-['Roboto Serif'] font-sans">
        <header class="">
            <div class="flex items-center justify-between py-5">
                <div class="logo w-[70px] ">
                    <img src="public/images/logo.png" class="w-full h-full" alt="">
                </div>
                <form class="flex" method="POST" action="?mod=product">
                    <input type="text" name="search" id="" class="py-2 outline-none w-[340px]  pl-[10px] bg-[#E8E8E8] rounded-l-[5px]" placeholder="Tìm ở đây">
                    <button name="btn" type="submit" class=" px-3 flex items-center  bg-[#E8E8E8] rounded-r-[5px]">
                        <img src="public/images/bx_search-alt-2.png" alt="">
                    </button>
                </form>

                <div class="phone items-center flex pl-[80px]">
                    <img src="public/images/Group 33.png" alt="">
                    <div class="pl-[10px]">
                        <p class="font-['Roboto Serif'] text-[#414141]">Hỗ trợ khách hàng</p>
                        <p class="font-[700] text-[#414141] ">0123456789</p>
                    </div>
                </div>
                <div class="login flex items-center pl-[50px]">
                    <?php if (!empty($user)) : ?>
                        <img src="public/images/<?php echo $user['image'] ?>" alt="" class="w-[60px]  object-contain rounded-full">
                        <div class="pl-[10px]">
                            <div>
                                <a href="?mod=account" class="font-['Roboto Serif'] btn btn-sm btn-light-primary font-weight-bolder py-2  uppercase text-green-500 "><?php echo $user['full_name'] ?></a>
                            </div>
                            <a href="?role=client&mod=login&action=logout" class="btn btn-sm btn-light-primary font-weight-bolder py-2  text-red-400 underline">Đăng xuất</a>
                        </div>
                    <?php else : ?>
                        <img src="public/images/login.png" alt="">
                        <div class="pl-[10px]">
                            <div>
                                <a href="http://localhost/nhom_2_du_an_1/?mod=login" class="font-['Roboto Serif']  underline text-[#414141] hover:text-blue-500">Đăng nhập</a>
                            </div>
                            <a href="http://localhost/nhom_2_du_an_1/?mod=register" class="text-[#414141] underline hover:text-blue-500">Đăng kí</a>
                        </div>
                    <?php endif ?>
                </div>
                <div class="cart flex pl-[75px]">
                    <div class="w-[157px] h-[44px] border-[3px] bg-red rounded-[10px] items-center flex">
                        <img src="public/images/cart.png" alt="" class="pl-[5px]">
                        <span class="px-[10px] text-[15] text-[#414141] text-center">Giỏ hàng</span>
                        <div class="bg-[#FFC107] w-[17px] h-[18px] text-center rounded-[3px] text-[13px] text-[#414141]">
                            0</div>
                    </div>
                </div>
            </div>
            <nav class="menu w-full h-[65px] bg-[#198754] flex items-center justify-center ">
                <ul class="flex justify-around gap-9">
                    <li class="text-[#ffffff]"><a href="?mod=home">Trang chủ</a></li>
                    <?php if (!is_login()) : ?>
                        <li class="text-[#ffffff]"><a href="?mod=login">Đăng nhập</a></li>
                        <li class="text-[#ffffff]"><a href="?mod=register">Đăng ký</a></li>
                    <?php endif ?>
                    <li class="text-[#ffffff]"><a href="?mod=cart">Giỏ hàng</a></li>
                    <li class="text-[#ffffff]"><a href="?mod=bill">Hoá đơn</a></li>
                    <li class="text-[#ffffff]"><a href="?mod=account">Tài khoản</a></li>
                </ul>
            </nav>
        </header>