<?php get_header('', 'Chi tiết sản phẩm') ?>
<main>
    <section class="mt-[37px] mb-[64px] bg-white rounded-[30px] flex ">
        <img src="public/images/<?= $product['images'] ?>" alt="" class="w-[500px] py-[20px] mx-[56px]">
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

  
    <section class="bg-white dark:bg-gray-900 py-8 lg:py-16">
        <div class=" mx-auto px-4">
            <div class="flex justify-between items-center mb-6">
                <h2 class="text-lg lg:text-[30px] font-bold text-gray-900 dark:text-white">Comments</h2>
            </div>
            <form class="mb-6">
                <div class="py-2 px-4 mb-4 bg-white rounded-lg rounded-t-lg border border-gray-200 dark:bg-gray-800 dark:border-gray-700">
                    <textarea id="comment" rows="6" class="px-0 w-full text-sm text-gray-900 border-0 focus:ring-0 focus:outline-none dark:text-white dark:placeholder-gray-400 dark:bg-gray-800" placeholder="Write a comment..." required></textarea>
                </div>
                <button type="submit" class="inline-flex items-center py-2.5 px-4 text-xs font-medium text-center text-white bg-blue-700 rounded-lg focus:ring-4 focus:ring-primary-200 dark:focus:ring-primary-900 hover:bg-primary-800">
                    Gửi bình luận
                </button>
            </form>
            <?php foreach ($comments as $comment): ?>
                <article class="p-6 mb-6 text-base bg-white rounded-lg dark:bg-gray-900">
                <div class="flex justify-between items-center mb-2">
                    <div class="flex items-center">
                        <p class="inline-flex items-center mr-3 text-sm text-gray-900 dark:text-white">
                            <img class="mr-2 w-6 h-6 rounded-full" src="public/images/<?= $comment['image'] ?>" alt="Michael Gough"><?= $comment['full_name'] ?>
                        </p>
                        <p class="text-sm text-gray-600 dark:text-gray-400"><time pubdate datetime="2022-02-08" title="February 8th, 2022">Feb. 8, 2022</time></p>
                    </div>
                   
                </div>
                <p class="text-gray-500 dark:text-gray-400">
                <?= $comment['description'] ?>
                </p>
                <div class="flex items-center mt-4 space-x-4">
                    <button type="button" class="flex items-center text-sm text-gray-500 hover:underline dark:text-gray-400">
                        <svg aria-hidden="true" class="mr-1 w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"></path>
                        </svg>
                        Reply
                    </button>
                </div>
            </article>
            <?php endforeach; ?>


        </div>
    </section>
    <section class="pb-[44px]">
        <div class="ml-[26px]">
            <h2 class="text-[#004031] text-[30px] pt-[24px] pb-[25px]">Sản phẩm Liên Quan</h2>
            <div class="grid grid-cols-5 gap-4">
            <?php foreach ($same_product as $product) : ?>

                <a href="?mod=detail&id=<?= $product['id'] ?>" class="p-2.5  text-xs sm:text-sm bg-white shadow-lg">
                    <img class="w-full transition-transform  hover:-translate-y-2 max-h-36 object-cover min-h-[100px]" src="public/images/<?= $product['images'] ?>" alt="">
                    <h3 class="mt-2.5 text-xl">
                        <?= $product['title'] ?>
                    </h3>
                    <div>
                    </div>
                    <div class="mt-2.5">
                        <div>Giá <?= $product['price'] ?></div>
                    </div>
                    <div class="mt-2.5 break-words">
                        <?= $product['description'] ?>
                    </div>
                </a>
            <?php endforeach ?>
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