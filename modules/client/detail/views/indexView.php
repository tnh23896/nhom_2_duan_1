<?php get_header('', 'Chi tiết sản phẩm') ?>
<main>
    <section class="mt-[37px] mb-[64px] bg-white rounded-[30px] flex ">
        <img src="public/images/products.png" alt="" class="w-[500px] py-[20px] mx-[56px]">
        <div class="flex">
            <div class="mt-[15px] ">
                <h2 class="text-[28px] mb-[26px]"><?= $product['name'] ?></h2>
                <div class="text-[16px] mb-[29px] flex">
                    <p>Thương hiệu: Khác</p>
                    <p class="mx-[15px]">|</p>
                    <p>Tình trạng: <?= $product['quantity'] == 0 ? "hết hàng" : "còn hàng" ?></p>
                </div>
                <div>
                    <p class="text-[15px] mb-[10px]">Loại:</p>
                    <div class="flex space-x-[15px] mb-[28px]">
                        <p class="border-2 border-solid border-[#666666] w-[72px] h-[26px] text-[10px] text-center pt-[3px]">
                            100g</p>


                    </div>
                </div>
                <div class="bg-[#FAFAFA] w-[24px] h-[38pr] rounded-[3px] mb-[16px]">
                    <p class="text-[#F3283D] text-[25px] ml-[12px]">500.000₫</p>
                </div>
                <p class="text-[15px] mb-[12px]">Số lượng:</p>
                <div class="flex mb-[41px]">
                    <button type="button" onClick='decreaseCount(event, this)' class="rounded-l-lg border-[2px] border-solid border-black w-[23px] h-[33px]"><span class="down">-</span></button>
                    <input class="border-[2px] border-solid border-black text-center w-[80px]" type="text" value="1" readonly="true">
                    <button type="button" onClick='increaseCount(event, this)' class="rounded-r-lg border-[2px] border-solid border-black w-[23px]"><span class="up">+</span></button>
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
    <section class=" bg-white rounded-[30px] mb-[65px] ['Roboto Serif']">
        <div class="ml-[26px] pt-[28px]">
            <h2 class="text-[30px] mb-[15px]">MÔ TẢ SẢN PHẨM </h2>
            <p>Sữa Meiji số 9 800g phù hợp cho trẻ từ 1 - 3 tuổi, không chỉ chứa các chất dinh dưỡng cơ bản như
                protein, chất béo, carbohydrat mà còn có các vitamin và khoáng chất rất khó có được từ sữa bò và
                thức ăn dạng rắn. Sữa bột cho bé Meiji còn bổ sung cả axit docosahexaenoic (DHA), các nucleotides và
                đặc biệt là hệ chất xơ GOS hỗ trợ tiêu hóa làm nên đặc tính mát của sữa giúp thúc đẩy sự phát triển
                toàn diện cả về thể chất lẫn não bộ của trẻ trong suốt giai đoạn thơ ấu. Sản phẩm được dùng bổ sung
                cùng các bữa ăn hàng ngày của bé, đem đến nguồn năng lượng dồi dào cho bé tiếp tục các hoạt động vui
                chơi và khám phá. </p>
            <img src="img/anh2.png" alt="" class="ml-[472px] my-[43px]">
        </div>
        <div class="ml-[26px]">
            <h2 class=" text-[30px] mb-[20px]">ĐẶC ĐIỂM NỔI BẬT CỦA SẢN PHẨM</h2>
            <p class="leading-[23px] pb-[30px]">
                Cung cấp nguồn dinh dưỡng và năng lượng <br>
                <br>
                Sữa Meiji số 9 cung cấp trên 70% nhu cầu vitamin và chất khoáng cho trẻ 1 - 3 tuổi/ngày theo khuyến
                nghị của FAO/WHO mang đến nguồn năng lượng và hệ dinh dưỡng cân bằng cho bé, tăng cường sức đề kháng
                để đảm bảo cho các hoạt động vui chơi trong ngày và một cơ thể khỏe mạnh.
                <br> <br>
                - Cung cấp chất lượng Protein tốt, bao gồm đạm Whey dễ tiêu hóa và hấp thu, kết hợp cùng nhiều dưỡng
                chất đảm bảo nguồn năng lượng mỗi ngày.
                <br> <br>
                - Bổ sung lactose là thành phần carbonhydrat chính trong sữa Meiji, mang đến nguồn năng lượng cho
                trẻ nhỏ, đồng thời tạo vị ngọt nhẹ cho sữa.
                <br> <br>
                - Bổ sung Nucleotides: cung cấp 6 mg của 5 loại Nucleotides ( axit adenylic, axit cytidylic, axit
                guanylic, axit inosinic, axit uridylic ) giúp cơ thể tạo kháng thể.
                <br> <br>
                - Hơn 10 loại vitamin (vitamin A, C, D, K, E, các vitamin nhóm B) có trong sữa Meiji là các loại
                vitamin cần thiết đối với trẻ nhỏ không chỉ mang đến hệ dinh dưỡng cân bằng mà còn nâng cao đề kháng
                cho một cơ thể khỏe mạnh để chống chọi với các loại bệnh thường gặp.
                <br> <br>
                Hỗ trợ phát triển não bộ
                <br> <br>
                Sữa Meiji số 9 đặc biệt bổ sung DHA, các vi chất như sắt, kẽm, acid Follic và hệ cân bằng Omega 3
                (axit-linolenic), Omega 6 (axit linoleic) tốt cho sự phát triển não bộ của bé trong giai đoạn từ 1
                đến 3 tuổi - giai đoạn bé bắt đầu học hỏi, khám phá và tiếp thu những điều xung quanh.
                <br> <br>
                Thúc đẩy tăng trưởng chiều cao
                <br> <br>
                Lượng Canxi gấp đôi so với Meiji số 0 kết hợp cùng tỷ lệ Canxi/Photpho là 2,0 và Canxi/Magie trong
                sữa Meiji là 7,6 theo đúng chuẩn FAO/WHO, đồng thời lượng vitamin D trong sữa cũng sẽ giúp bé hấp
                thu Canxi một cách tốt hơn, do đó, với việc sử dụng Meiji mỗi ngày, bé sẽ được hỗ trợ để tăng cường
                chiều cao cũng như sự chắc khỏe của răng.
                <br> <br>
                Giúp hệ tiêu hóa khỏe mạnh
                <br> <br>
                FOS (Fructo-oligosaccha ride) có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một
                cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn,
                nhanh chóng tăng cân.
                Hướng dẫn sử dụng sản phẩm
                Hướng dẫn pha sữa
                <br> <br>
                - Định lượng chính xác lượng bột sữa theo yêu cầu bằng cách sử dụng thìa đi kèm và đong sữa vào vật
                chứa sạch (bình hoặc cốc).
                <br> <br>
                - Đổ nước sôi để nguội đến khoảng 50 độ C vào bình với lượng bằng 2/3 chỉ định, chú ý để không bị
                bỏng và lắc đều cho đến khi bột sữa tan hoàn toàn.
                <br> <br>
                - Thêm nước sôi vừa đủ lượng nước chỉ định, khuấy đều. Khi cho trẻ dùng, hãy đảm bảo nhiệt độ pha
                gần bằng nhiệt độ cơ thể.
                <br> <br>
                Định lượng sử dụng
                <br> <br>
                - Sử dụng muỗng chuyên dụng có trong hộp để đong chính xác lượng sữa.
                <br> <br>
                - 1 muỗng chuyên dụng gạt ngang đong được khoảng 5,6g sữa, pha cùng với 40ml nước.
            </p>

        </div>
    </section>

    <section class="bg-white rounded-[30px]">
        <h2 class="text-[30px] pt-[40px] ml-[26px] mb-[30px]">Viết Đánh Giá</h2>
        <div class="ml-[67px] flex mb-[37px]">
            <img src="img/avt.png" alt="" class="mr-[27px]">
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
<?php get_footer('') ?>