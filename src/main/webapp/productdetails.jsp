<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>GlamCart · Product Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body class="bg-pink-50 flex flex-col min-h-screen">
    <nav class="bg-rose-800 text-white px-6 py-4 shadow-lg sticky top-0 z-50">...</nav>

    <main class="max-w-7xl mx-auto px-6 py-10 flex-grow">
        <div class="bg-white rounded-2xl shadow-xl p-6 md:p-8 border border-rose-100">
            <div class="flex flex-col md:flex-row gap-8">
                <!-- Image -->
                <div class="md:w-1/2">
                    <img src="https://picsum.photos/seed/beauty1/600/400" alt="Lipstick" class="rounded-2xl w-full object-cover" />
                </div>
                <!-- Details -->
                <div class="md:w-1/2">
                    <h1 class="text-3xl font-bold text-rose-800">Velvet Matte Lipstick</h1>
                    <div class="flex items-center gap-2 mt-2">
                        <span class="bg-green-100 text-green-800 text-sm px-3 py-1 rounded-full">In Stock</span>
                        <span class="flex items-center gap-1 text-yellow-400"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i> 4.5</span>
                    </div>
                    <p class="text-3xl font-bold text-rose-800 mt-4">₹1,299</p>
                    <p class="text-rose-500 mt-2">Long-lasting, highly pigmented matte lipstick with a velvety finish. Infused with vitamin E for smooth application.</p>

                    <!-- Add to Cart form -->
                    <form action="AddToCartServlet" method="post" class="mt-4">
                        <input type="hidden" name="productId" value="101" />
                        <label class="block text-sm font-medium text-rose-600">Quantity</label>
                        <div class="flex items-center gap-3 mt-1">
                            <button type="button" class="border border-rose-200 rounded-lg px-3 py-1" onclick="this.nextElementSibling.stepDown()">−</button>
                            <input type="number" name="quantity" value="1" min="1" max="5" class="w-16 text-center border border-rose-200 rounded-lg" />
                            <button type="button" class="border border-rose-200 rounded-lg px-3 py-1" onclick="this.previousElementSibling.stepUp()">+</button>
                            <span class="text-sm text-rose-400 ml-2">( max 5 )</span>
                        </div>
                        <div class="flex flex-wrap gap-3 mt-6">
                            <button type="submit" class="flex-1 bg-rose-700 text-white py-3 rounded-xl hover:bg-rose-800 transition"><i class="fas fa-cart-plus mr-2"></i> Add to Cart</button>
                            <button type="button" class="flex-1 border border-rose-700 text-rose-700 py-3 rounded-xl hover:bg-rose-700 hover:text-white transition"><i class="fas fa-bolt mr-2"></i> Buy Now</button>
                        </div>
                    </form>

                    <!-- Reviews -->
                    <div class="mt-8 border-t pt-6 border-rose-100">
                        <h3 class="font-bold text-rose-800">Customer Reviews</h3>
                        <div class="mt-4 space-y-4">
                            <div class="flex gap-3">
                                <div class="h-10 w-10 rounded-full bg-rose-200 flex items-center justify-center text-rose-700 font-bold">JD</div>
                                <div><p class="text-sm font-medium">Jane Doe</p><p class="text-sm text-rose-500">Perfect shade! Love the texture.</p></div>
                            </div>
                            <div class="flex gap-3">
                                <div class="h-10 w-10 rounded-full bg-rose-200 flex items-center justify-center text-rose-700 font-bold">AS</div>
                                <div><p class="text-sm font-medium">Alice Smith</p><p class="text-sm text-rose-500">Stays on all day, highly recommend.</p></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <footer class="bg-rose-900 text-rose-300 text-sm py-6 mt-auto">...</footer>
</body>
</html>