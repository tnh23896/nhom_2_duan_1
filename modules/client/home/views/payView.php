<?php get_header('', 'Thanh Toán') ?>
<main>
            <div class="flex shadow-md my-10">
                <div class="w-full bg-white px-10 py-10">
                  <div class="flex justify-between border-b pb-8">
                    <h1 class="font-semibold text-2xl">Thanh toán</h1>
                    <h2 class="font-semibold text-2xl">3 Sản phẩm</h2>
                  </div>
                  <div class="flex mt-10 mb-5">
                    <h3 class="font-semibold text-gray-600 text-xs uppercase w-2/5">Chi tiết sản phẩm</h3>
                    <h3 class="font-semibold text-center text-gray-600 text-xs uppercase w-1/5 text-center">Số lượng</h3>
                    <h3 class="font-semibold text-center text-gray-600 text-xs uppercase w-1/5 text-center">Giá</h3>
                    <h3 class="font-semibold text-center text-gray-600 text-xs uppercase w-1/5 text-center">Tổng thanh toán</h3>
                  </div>
                  <div class="flex items-center hover:bg-gray-100 -mx-8 px-6 py-5">
                    <div class="flex w-2/5"> <!-- product -->
                      <div class="w-20">
                        <img class="h-24" src="https://drive.google.com/uc?id=18KkAVkGFvaGNqPy2DIvTqmUH_nk39o3z" alt="">
                      </div>
                      <div class="flex flex-col justify-between ml-4 flex-grow">
                        <span class="font-bold text-sm">Iphone 6S</span>
                        <span class="text-red-500 text-xs">Loại</span>
                        <span class="text-red-500 text-xs">Apple</span>
                        
                      </div>
                    </div>
                    <div class="flex justify-center w-1/5">
                      <div class="mx-2 text-center w-8">1</div>
                    </div>
                    <span class="text-center w-1/5 font-semibold text-sm">4.000.000</span>
                    <span class="text-center w-1/5 font-semibold text-sm">4.000.000</span>
                  </div>
          
                  <div class="flex items-center hover:bg-gray-100 -mx-8 px-6 py-5">
                    <div class="flex w-2/5"> <!-- product -->
                      <div class="w-20">
                        <img class="h-24" src="https://drive.google.com/uc?id=10ht6a9IR3K2i1j0rHofp9-Oubl1Chraw" alt="">
                      </div>
                      <div class="flex flex-col justify-between ml-4 flex-grow">
                        <span class="font-bold text-sm">Xiaomi Mi 20000mAh</span>
                        <span class="text-red-500 text-xs">Loại</span>
                        <span class="text-red-500 text-xs">Xiaomi</span>
                        
                      </div>
                    </div>
                    <div class="flex justify-center w-1/5">
                      <div class="mx-2 text-center w-8">1</div>
                    </div>
                    <span class="text-center w-1/5 font-semibold text-sm">2.000.000</span>
                    <span class="text-center w-1/5 font-semibold text-sm">2.000.000</span>
                  </div>
          
                  <div class="flex items-center hover:bg-gray-100 -mx-8 px-6 py-5">
                    <div class="flex w-2/5"> <!-- product -->
                      <div class="w-20">
                        <img class="h-24" src="https://drive.google.com/uc?id=1vXhvO9HoljNolvAXLwtw_qX3WNZ0m75v" alt="">
                      </div>
                      <div class="flex flex-col justify-between ml-4 flex-grow">
                        <span class="font-bold text-sm">Airpods</span>
                        <span class="text-red-500 text-xs">Loại</span>
                        <span class="text-red-500 text-xs">Apple</span>
                        
                      </div>
                    </div>
                    <div class="flex justify-center w-1/5">
                        <div class="mx-2  text-center w-8">1</div>
                    </div>
                    <span class="text-center w-1/5 font-semibold text-sm">6.000.000</span>
                    <span class="text-center w-1/5 font-semibold text-sm">6.000.000</span>
                  </div>
          
            
                </div>
          
           
          
              </div>

              <div class="w-full h-auto block h-screen shadow p-4 flex items-center justify-center" >
                <div class="bg-white py-6 px-10 sm:max-w-md w-full ">
                    <div class="sm:text-3xl text-2xl font-semibold text-center text-sky-600  mb-12">
                        Thông tin người nhân
                    </div>
                    <div class="">
                        <div>
                             <input type="text" class="focus:outline-none border-b w-full pb-2 border-sky-400 placeholder-gray-500"  placeholder="Tên "/>
                        </div>
                         <div>
                             <input type="email" class="focus:outline-none border-b w-full pb-2 border-sky-400 placeholder-gray-500 my-8"  placeholder="Điện thoại"/>
                        </div>
                         
                         <div>
                            <label class="">Địa chỉ</label>
                        <textarea class="focus:outline-none border w-full pb-2 border-sky-400 placeholder-gray-500 mb-8"></textarea>
                        </div>
                       
                        <div class="flex justify-center my-6">
                            <button class=" rounded-full  p-3 w-full sm:w-56   bg-green-400 from-sky-600  to-teal-300 text-white text-lg font-semibold " >
                                Thanh toán
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
<?php get_footer('') ?>