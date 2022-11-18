
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $title ?></title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-[#F9F9F9]">
    <div class="container w-full m-auto font-['Roboto Serif'] font-sans">
        <header class="">
            <div class="flex items-center justify-between py-5">
                <div class="logo w-[70px] ">
                    <img src="public/images/logo.png" class="w-full h-full" alt="">
                </div>
                <form class="flex">
                    <input type="text" name="" id=""
                        class="py-2 outline-none w-[340px]  pl-[10px] bg-[#E8E8E8] rounded-l-[5px]"
                        placeholder="Tìm sản phẩm ở đây...">
                    <button class=" px-3 flex items-center  bg-[#E8E8E8] rounded-r-[5px]">
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
                    <img src="public/images/login.png" alt="">
                    <div class="pl-[10px]">
                        <div>
                            <a class="font-['Roboto Serif']  underline text-[#414141]">Đăng nhập</a>
                        </div>
                        <a class="text-[#414141] underline">Đăng kí</a>
                    </div>
                </div>
                <div class="cart flex pl-[75px]">
                    <div class="w-[157px] h-[44px] border-[3px] bg-red rounded-[10px] items-center flex">
                        <img src="public/images/cart.png" alt="" class="pl-[5px]">
                        <span class="px-[10px] text-[15] text-[#414141] text-center">Giỏ hàng</span>
                        <div
                            class="bg-[#FFC107] w-[17px] h-[18px] text-center rounded-[3px] text-[13px] text-[#414141]">
                            0</div>
                    </div>
                </div>
            </div>
            <nav class="menu w-full h-[65px] bg-[#198754] flex items-center justify-center ">
                <ul class="flex justify-around gap-9">
                    <li class="text-[#ffffff]"><a href="http://localhost/nhom_2_du_an_1">Trang chủ</a></li>
                    <li class="text-[#ffffff]"><a href="http://localhost/nhom_2_du_an_1/?action=login">Đăng nhập</a></li>
                    <li class="text-[#ffffff]"><a href="http://localhost/nhom_2_du_an_1/?action=register">Đăng ký</a></li>
                    <li class="text-[#ffffff]"><a href="http://localhost/nhom_2_du_an_1/?action=cart">Giỏ hàng</a></li>
                    <li class="text-[#ffffff]"><a href="http://localhost/nhom_2_du_an_1/?action=account">Tài khoản</a></li>
                </ul>
            </nav>
        </header>


