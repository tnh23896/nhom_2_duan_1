<?php get_header('', 'Trang chủ') ?>
<main class="">
    <?php foreach ($notifications as $notification): ?>
    <?php foreach ($notification['msgs'] as $msg): ?>
    <span class="label label-lg text-<?php echo $notification['type'] ?>-500 label-inline mb-3">
        <?php echo $msg ?>
    </span>
    <?php endforeach; ?>
    <?php endforeach; ?>
    <section class="mb-[33px] ">
        <!-- <img src="public/images/banner.png" alt="" class="w-full"> -->
        <div class="slideshow-container">
            <div class="mySlides fade">
                <img src="public/images/banner.png" class="w-full">
            </div>
            <div class="mySlides fade">
                <img src="public/images/thichsua.jpg" class="w-full">
            </div>
            <div class="mySlides fade">
                <img src="public/images/banner3.jpg" class="w-full">
            </div>
            <a class="prev" onclick="plusSlides(-1)">❮</a>
            <a class="next" onclick="plusSlides(1)">❯</a>
        </div>
    </section>
    <section class="bg-[#F9F9F9] text-[15px] flex justify-center space-x-[75px] mb-[21px]">
        <?php foreach ($brands as $br): ?>
        <div class="mt-[10px] mb-[19px]">
            <a href="?mod=product&brand_id=<?= $br['id'] ?>" class="hover:text-red-600">
                <img src="public/images/<?= $br['image'] ?>" alt="" class="w-[100px] rounded-full">
                <?= $br['name'] ?>
            </a>
        </div>
        <?php endforeach; ?>
    </section>
    <section class="pb-[40px]">
        <div class="bg-[#004031] rounded-[5px] mx-[10px] h-[40px] mb-[40px]">
            <p class="text-center italic font-bold text-[14px] text-white pt-[10px]">Danh mục</p>
        </div>
        <div class="border-b-gray-400 border-b-[3px] border-solid  ">
            <ul class="text-[20px] flex justify-center space-x-[50px]  pb-[20px]">
                <?php foreach ($categories as $category): ?>
                <li><a href="?mod=product&cate_id=<?= $category['id'] ?>" class="hover:text-red-600">
                        <?= $category['name'] ?>
                    </a></li>
                <?php endforeach; ?>
            </ul>
        </div>
    </section>

    <section class="bg-[#F9F9F9] pb-[31px] mb-[31px]">
        <h3 class="font-['Yeseva One'] text-[30px] py-[27px]">Sản phẩm</h3>
        <div class="grid grid-cols-5 gap-4">
            <?php foreach ($result as $product): ?>

            <a href="?mod=detail&id=<?= $product['id'] ?>" class="p-2.5  text-xs sm:text-sm bg-white shadow-lg">
                <img class="w-full transition-transform  hover:-translate-y-2 max-h-36 object-cover min-h-[100px]"
                    src="public/images/<?= $product['images'] ?>" alt="">
                <h3 class="mt-2.5 text-xl">
                    <?= $product['title'] ?>
                </h3>
                <div>
                </div>
                <div class="mt-2.5">
                    <div>Giá <?= $product['price'] ?>
                    </div>
                </div>
                <div class="mt-2.5 break-words">
                    <?= $product['description'] ?>
                </div>
            </a>
            <?php endforeach ?>

        </div>
        <div class="pagination pt-[40px] text-green-700 text-[20px] ">
            <?php if ($current_page > 1 && $total_page > 1): ?>
            <a href="index.php?page=' . (<?= $current_page - 1 ?> ) . '">Prev</a> |
            <?php endif ?>
            <?php
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


    </section>
</main>
<script>
    let slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }
</script>
<?php get_footer('') ?>