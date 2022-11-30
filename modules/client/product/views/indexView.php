<?php get_header('', 'Trang chủ') ?>
<main class="">
    <section class="bg-[#F9F9F9] pb-[31px] mb-[31px]">
        <h3 class="font-['Yeseva One'] text-[30px] py-[27px]">Sản phẩm</h3>
        <?php foreach ($notifications as $notification) : ?>
            <?php foreach ($notification['msgs'] as $msg) : ?>
                <span class="label label-lg text-<?php echo $notification['type'] ?>-500 label-inline mb-3"><?php echo $msg ?></span>
            <?php endforeach; ?>
        <?php endforeach; ?>
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

        </div>
        <div class="pagination pt-[40px] text-green-700 text-[20px] ">
            <?php if ($current_page > 1 && $total_page > 1) : ?>
                <a href="?mod=product<?= isset($_GET['cate_id']) ? "&cate_id=" . $_GET['cate_id'] : '' ?>&page=<?= $current_page - 1 ?>">Prev</a> |
            <?php endif ?>
            <?php
            for ($i = 1; $i <= $total_page; $i++) : ?>
                <!-- // Nếu là trang hiện tại thì hiển thị thẻ span
                // ngược lại hiển thị thẻ a -->
                <?php if ($i == $current_page) : ?>
                    <span><?= $i ?></span> |
                <?php else : ?>
                    <a href="?mod=product<?= isset($_GET['cate_id']) ? "&cate_id=" . $_GET['cate_id'] : '' ?>&page=<?= $i ?>"><?= $i ?></a> |
                <?php endif ?>
            <?php endfor ?>
            <!-- // nếu current_page < $total_page và total_page> 1 mới hiển thị nút prev -->
            <?php if ($current_page < $total_page && $total_page > 1) : ?>
                <a href="?mod=product<?= isset($_GET['cate_id']) ? "&cate_id=" . $_GET['cate_id'] : '' ?>&page=<?= ($current_page + 1) ?>">Next</a> |
            <?php endif; ?>

        </div>

    </section>
</main>
<?php get_footer('') ?>