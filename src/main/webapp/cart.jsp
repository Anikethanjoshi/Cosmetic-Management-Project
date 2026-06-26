<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>GlamCart · Cart</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body class="bg-pink-50 flex flex-col min-h-screen">
    <nav class="bg-rose-800 text-white px-6 py-4 shadow-lg sticky top-0 z-50">...</nav>

    <main class="max-w-7xl mx-auto px-6 py-10 flex-grow">
        <h1 class="text-3xl font-bold text-rose-800 mb-6"><i class="fas fa-shopping-cart mr-3 text-pink-500"></i>Your Cart</h1>
        <div class="bg-white rounded-2xl shadow p-6 border border-rose-100">
            <!-- Cart items -->
            <form action="UpdateCartServlet" method="post">
                <div class="flex flex-col gap-4">
                    <div class="flex flex-col sm:flex-row items-center gap-4 border-b pb-4 border-rose-100">
                        <img src="https://picsum.photos/seed/beauty1/100/100" alt="Product" class="w-20 h-20 rounded-lg object-cover" />
                        <div class="flex-1">
                            <h3 class="font-semibold text-rose-800">Velvet Matte Lipstick</h3>
                            <p class="text-sm text-rose-500">₹1,299</p>
                        </div>
                        <div class="flex items-center gap-3">
                            <input type="number" name="quantity_101" value="1" min="1" class="w-16 text-center border border-rose-200 rounded-lg" />
                        </div>
                        <p class="font-bold text-rose-800">₹1,299</p>
                        <button type="submit" name="remove" value="101" class="text-red-500 hover:text-red-700"><i class="fas fa-trash-alt"></i></button>
                    </div>
                    <!-- repeat for more items -->
                </div>
                <div class="mt-6 border-t pt-4 border-rose-100 flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
                    <div>
                        <p class="text-rose-500">Subtotal: <span class="font-bold text-rose-800">₹1,299</span></p>
                        <p class="text-rose-500">Shipping: <span class="font-bold text-rose-800">₹50</span></p>
                        <p class="text-xl font-bold text-rose-800">Total: ₹1,349</p>
                    </div>
                    <div class="flex gap-3">
                        <button type="submit" class="bg-rose-200 text-rose-800 px-4 py-2 rounded-lg hover:bg-rose-300 transition">Update</button>
                        <a href="checkout.jsp" class="bg-rose-700 text-white px-8 py-3 rounded-xl hover:bg-rose-800 transition"><i class="fas fa-credit-card mr-2"></i> Checkout</a>
                    </div>
                </div>
            </form>
        </div>
    </main>

    <footer class="bg-rose-900 text-rose-300 text-sm py-6 mt-auto">...</footer>
</body>
</html>