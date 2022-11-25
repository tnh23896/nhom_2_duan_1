<?php get_header('', 'Hoá đơn của bạn') ?>
<main>
    <div class="bg-white mb-[30px] p-5">
        <h2 class="my-[30px] text-[40px] font-bold text-center">Chi Tiết Hóa Đơn</h2>
        <div class="flex flex-col">
            <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
                <div class=" inline-block min-w-full sm:px-6 lg:px-8">
                    <div class="overflow-hidden">
                        <table class="min-w-full border text-center">
                            <thead class="border-b">
                                <tr>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 border-r">
                                        Loại
                                    </th>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 border-r">
                                        Tên sản phẩm
                                    </th>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 border-r">
                                        Hình ảnh
                                    </th>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 border-r">
                                        Đơn giá
                                    </th>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 border-r">
                                        Số lượng
                                    </th>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                                        Thành tiền
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="bg-white border-b">
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900 border-r">2</td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap border-r">
                                        Jacob
                                    </td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap border-r">
                                        Thornton
                                    </td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap border-r">
                                        @fat
                                    </td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap border-r">
                                        @fat
                                    </td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                                        <a href="">Xem chi tiết</a>
                                    </td>

                                </tr>
                                <tr class="bg-white border-b">
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900 border-r">2</td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap border-r">
                                        Jacob
                                    </td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap border-r">
                                        Thornton
                                    </td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap border-r">
                                        @fat
                                    </td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap border-r">
                                        @fat
                                    </td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                                        <a href="">Xem chi tiết</a>
                                    </td>
                                </tr>

                            </tbody>

                            <tbody>
                                <tr class="bg-white border-b">
                                    <td colspan="3" class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900 border-r">Tổng thành tiền</td>
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                                        55555555555555đ
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>

</main>
<?php get_footer('') ?>