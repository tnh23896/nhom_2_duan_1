<?php get_header('', 'Hoá đơn của bạn') ?>
<main class="flex justify-center py-[50px]">
    <div class="bg-white mb-[30px] p-5">
        <h2 class="my-[30px] text-[40px] font-bold text-center">Hóa Đơn</h2>
        <div class="flex flex-col">
            <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
                <div class=" inline-block min-w-full sm:px-6 lg:px-8">
                    <div class="overflow-hidden">
                        <table class="min-w-full border text-center">
                            <thead class="border-b">
                                <tr>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 border-r">
                                        Tên người mua
                                    </th>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 border-r">
                                        Số điện thoại
                                    </th>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 border-r">
                                        Địa chỉ
                                    </th>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4 border-r">
                                        Tổng thành tiền
                                    </th>
                                    <th scope="col" class="text-sm font-medium text-gray-900 px-6 py-4">
                                        Action
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
                                    <td class="text-sm text-gray-900 font-light px-6 py-4 whitespace-nowrap">
                                        <a href="">Xem chi tiết</a>
                                    </td>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php get_footer('') ?>