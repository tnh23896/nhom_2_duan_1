<?php get_header('', 'Đăng ký') ?>
<main class="py-10">
    <div class="w-full h-[400px] flex justify-center ">
        <div class="m-auto grid grid-2 w-[90px]">
            <div>
                <h1 class="text-[20px] font-bold">Hồ sơ của tôi</h1>
                <span class="text-[#989494] text-[15px]">Quản lý thông tin hồ sơ để bảo mật tài khoản</span>
            </div>
            <div class="name py-[10px]">
                <div>
                    <label class="text-[15px] text-[#414141]">Họ và tên</label>
                </div>
                <input class="w-[300px] h-[44px] border pl-[10px] rounded-[5px]" type="text" name="" id="" placeholder="Họ và tên">
            </div>
            <div class="Email py-[10px]">
                <div>
                    <label class="text-[15px] text-[#414141]">Email</label>
                </div>
                <input class="w-[300px] h-[44px] border pl-[10px] rounded-[5px]" type="text" name="" id="" placeholder="Email">
            </div>
            <div class="Phone py-[10px]">
                <div>
                    <label class="text-[15px] text-[#414141]">Số điện thoại</label>
                </div>
                <input class="w-[300px] h-[44px] border pl-[10px] rounded-[5px]" type="text" name="" id="" placeholder="Số điện thoại">
            </div>
        </div>
        <div class="image m-auto">
            <div class="m-auto">
                <img src="./img/login.png" alt="" width="80">
                <div class="pt-[10px]">
                    <input type="file" name="" id="">
                </div>
            </div>
        </div>
    </div>
    <div class="flex justify-center">
        <div class="save bg-[#198754] w-[240px] h-[46px] rounded-[3px] flex items-center justify-center">
            <button class="text-[#ffffff] text-[22px] font-bold">Lưu</button>
        </div>
    </div>
</main>
<?php get_footer('') ?>