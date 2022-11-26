<?php get_header('', 'Trang chủ') ?>
<main class="">
    <section class="mb-[33px] ">
        <img src="public/images/banner.png" alt="" class="w-full">
    </section>
    <section class="bg-[#F9F9F9] text-[15px] flex justify-center space-x-[75px] mb-[21px]">
        <div class="mt-[10px] mb-[19px]">
            <img src="public/images/brand1.png" alt="">
            <p class="text-center mt-[26px]">Vinamilk</p>
        </div>
        <div class="mt-[10px] mb-[19px]">
            <img src="public/images/brand2.png" alt="">
            <p class="text-center mt-[26px]">TH true milk</p>
        </div>
        <div class="mt-[10px] mb-[19px]">
            <img src="public/images/brand3.png" alt="">
            <p class="text-center mt-[26px]">Ba vì</p>
        </div>
        <div class="mt-[10px] mb-[19px]">
            <img src="public/images/brand4.png" alt="">
            <p class="text-center mt-[26px]">Cô gái Hà Lan</p>
        </div>
    </section>
    <section class="pb-[40px]">
        <div class="bg-[#004031] rounded-[5px] mx-[10px] h-[40px] mb-[40px]">
            <p class="text-center italic font-bold text-[14px] text-white pt-[10px]">Danh mục</p>
        </div>
        <div class="border-b-gray-400 border-b-[3px] border-solid  ">
            <ul class="text-[20px] flex justify-center space-x-[50px]  pb-[20px]">
                <li><a href="" class="hover:text-red-600">Sữa trẻ sơ sinh</a></li>
                <li><a href="" class="hover:text-red-600">Sữa dinh dưỡng</a></li>
                <li><a href="" class="hover:text-red-600">Sữa vitamin</a></li>
                <li><a href="" class="hover:text-red-600">Sữa người cao tuổi</a></li>
                <li><a href="" class="hover:text-red-600">Sữa hộp</a></li>
            </ul>
        </div>
    </section>

    <section class="bg-[#F9F9F9] pb-[31px] mb-[31px]">
        <h3 class="font-['Yeseva One'] text-[30px] py-[27px]">Sản phẩm</h3>
        <div class="grid grid-cols-5 gap-4">
            <?php foreach ($result as $product) : ?>

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
            <div class="pagination">
                <?php
                // PHẦN HIỂN THỊ PHÂN TRANG
                // BƯỚC 7: HIỂN THỊ PHÂN TRANG

                // nếu current_page > 1 và total_page > 1 mới hiển thị nút prev
                if ($current_page > 1 && $total_page > 1) {
                    echo '<a href="index.php?page=' . ($current_page - 1) . '">Prev</a> | ';
                }

                // Lặp khoảng giữa
                for ($i = 1; $i <= $total_page; $i++) {
                    // Nếu là trang hiện tại thì hiển thị thẻ span
                    // ngược lại hiển thị thẻ a
                    if ($i == $current_page) {
                        echo '<span>' . $i . '</span> | ';
                    } else {
                        echo '<a href="index.php?page=' . $i . '">' . $i . '</a> | ';
                    }
                }

                // nếu current_page < $total_page và total_page > 1 mới hiển thị nút prev
                if ($current_page < $total_page && $total_page > 1) {
                    echo '<a href="index.php?page=' . ($current_page + 1) . '">Next</a> | ';
                }
                ?>
            </div>
        </div>



    </section>
</main>
<?php get_footer('') ?>