<?php get_header('', 'Chi tiết sản phẩm') ?>
<main>
    <section class="mt-[37px] mb-[64px] bg-white rounded-[30px] flex ">
        <img src="public/images/products.png" alt="" class="w-[500px] py-[20px] mx-[56px]">
        <div class="flex">
            <div class="mt-[15px] ">
                <h2 class="text-[28px] mb-[26px]"><?= $product['name'] ?></h2>
                <div class="text-[16px] mb-[29px] flex">
                    <p>Thương hiệu: <?= $product['b_name'] ?></p>
                    <p class="mx-[15px]">|</p>
                    <p>Tình trạng: <?= $product['quantity'] == 0 ? "hết hàng" : "còn hàng" ?></p>
                </div>
                <div>
                    <p class="text-[15px] mb-[10px]">Loại:</p>
                    <div class="flex space-x-[15px] mb-[28px]">
                        <?php foreach ($types as $type) : ?>

                            <input type="radio" name="type_id" value="<?= $type['id_type'] ?>" id="">
                            <p class="border-2 border-solid border-[#666666] w-[72px] h-[26px] text-[10px] text-center pt-[3px]">
                                <?= $type['name'] ?>
                            </p>
                        <?php endforeach ?>

                    </div>
                </div>
                <div class="bg-[#FAFAFA] w-[24px] h-[38pr] rounded-[3px] mb-[16px]">
                    <p class="text-[#F3283D] text-[25px] ml-[12px]"><?= $product['price'] ?>đ</p>
                </div>
                <p class="text-[15px] mb-[12px]">Số lượng:</p>
                <div class="flex mb-[41px]">
                    <button type="button" onClick='decreaseCount(event, this)' class="rounded-l-lg outline-none border-solid border-black w-[23px] h-[33px]"><span class="down">-</span></button>
                    <input class="outline-none border-solid border-black text-center w-[80px]" type="text" value="1">
                    <button type="button" onClick='increaseCount(event, this)' class="rounded-r-lg outline-none border-solid border-black w-[23px]"><span class="up">+</span></button>
                </div>
                <div class="flex">
                    <button class="font-bold text-[15px] bg-[#FF5722] text-white w-[174px] h-[56px] text-center rounded-[7px] mr-[15px]">MUA
                        NGAY</button>
                    <button class="bg-orange-200 border-[#FF5722] border-solid rounded-[7px] w-[259px] h-[56px] flex text-[15px]">
                        <img src="public/images/cart2.png" alt="" class="mt-[18px] ml-[30px] mr-[13px]">
                        <p class="text-[#FF5722] mt-[17px]">THÊM VÀO GIỎ HÀNG</p>
                    </button>
                </div>
            </div>
            <div class="w-[311px] h-[284px] border-[1px] border-solid border-[#F9EAE1] text-[11px] mt-[100px]">
                <p class="mt-[13px] mb-[36px] text-[15px] ml-[24px]">FOOD MILK CAM KẾT:</p>
                <div class="flex mb-[20px] ml-[24px]">
                    <img src="img/icon1.png" alt="">
                    <p class="ml-[16px]">Nguồn gốc rõ ràng.</p>
                </div>
                <div class="flex mb-[20px] ml-[24px]">
                    <img src="img/icon2.png" alt="">
                    <p class="ml-[16px]">Chất lượng đảm bảo.</p>
                </div>
                <div class="flex mb-[20px] ml-[24px]">
                    <img src="img/icon4.png" alt="">
                    <p class="ml-[16px]">Giá cả cạnh tranh.</p>
                </div>
                <div class="flex mb-[25px] ml-[24px]">
                    <img src="img/icon3.png" alt="">
                    <p class="ml-[16px]">Tốt cho sức khoẻ.</p>
                </div>
                <p class="mb-[25px] text-[14px] ml-[24px]">Hotline: 0123.456.789</p>
            </div>
        </div>
    </section>
    <section class=" bg-white rounded-[30px] pb-3 mb-[65px] ['Roboto Serif']">
        <div class="ml-[26px] pt-[28px]">
            <h2 class="text-[30px] mb-[15px]">MÔ TẢ SẢN PHẨM </h2>
            <p><?= $product['description'] ?></p>

        </div>

    </section>

    <section class="bg-white rounded-[30px]">
        <h2 class="text-[30px] pt-[40px] ml-[26px] mb-[30px]">Viết Đánh Giá</h2>
        <div class="ml-[67px] flex mb-[37px]">
            <img src="public/images/<?= $product['image'] ?>" alt="" class="">
            <div class="text-[16px]">
                <p class="text-[#FF0000]">Tên</p>
                <p>Comment</p>
            </div>
        </div>
        <form action="" class="ml-[67px] pb-[43px] mb-[51px]">
            <input type="text" name="" placeholder="Viết nội dung đánh giá ở đây..." class="border-[1px] border-[#E2E2E2] w-[967px] pl-[20px] pt-[20px] pb-[150px] mb-[36px]">
            <br><button class="w-[164px] h-[53px] text-[20px] text-white bg-[#F52813] rounded-[5px]">Gửi Đánh
                Giá</button>
        </form>
    </section>
    <section class="bg-white pb-[44px]">
        <div class="ml-[26px]">
            <h2 class="text-[#004031] text-[30px] pt-[24px] pb-[25px]">Sản phẩm Liên Quan</h2>
            <div class="border-[1px] border-solid border-[#000000] flex justify-around">
                <div class="text-[14px] font-bold w-[185px] mt-[12px] mb-[24px]">
                    <img src="img/anh3.png" alt="">
                    <p class="text-[#004031] my-[10px]">Sữa bột XO số 2,3 dành cho bé tăng cân</p>
                    <p class="text-[#F3283D]">Giá: 500.000đ</p>
                </div>
                <div class="text-[14px] font-bold w-[185px] mt-[12px] mb-[24px]">
                    <img src="img/anh3.png" alt="">
                    <p class="text-[#004031] my-[10px]">Sữa bột XO số 2,3 dành cho bé tăng cân</p>
                    <p class="text-[#F3283D]">Giá: 500.000đ</p>
                </div>
                <div class="text-[14px] font-bold w-[185px] mt-[12px] mb-[24px]">
                    <img src="img/anh3.png" alt="">
                    <p class="text-[#004031] my-[10px]">Sữa bột XO số 2,3 dành cho bé tăng cân</p>
                    <p class="text-[#F3283D]">Giá: 500.000đ</p>
                </div>
                <div class="text-[14px] font-bold w-[185px] mt-[12px] mb-[24px]">
                    <img src="img/anh3.png" alt="">
                    <p class="text-[#004031] my-[10px]">Sữa bột XO số 2,3 dành cho bé tăng cân</p>
                    <p class="text-[#F3283D]">Giá: 500.000đ</p>
                </div>
                <div class="text-[14px] font-bold w-[185px] mt-[12px] mb-[24px]">
                    <img src="img/anh3.png" alt="">
                    <p class="text-[#004031] my-[10px]">Sữa bột XO số 2,3 dành cho bé tăng cân</p>
                    <p class="text-[#F3283D]">Giá: 500.000đ</p>
                </div>
            </div>
        </div>

    </section>
</main>
<script type="text/javascript">
    function increaseCount(a, b) {
        var input = b.previousElementSibling;
        var value = parseInt(input.value, 10);
        value = isNaN(value) ? 0 : value;
        value++;
        input.value = value;
    }

    function decreaseCount(a, b) {
        var input = b.nextElementSibling;
        var value = parseInt(input.value, 10);
        if (value > 1) {
            value = isNaN(value) ? 0 : value;
            value--;
            input.value = value;
        }
    }
</script>
<?php get_footer('') ?>