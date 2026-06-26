<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>GlamCart · Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body class="bg-pink-50 flex flex-col min-h-screen">
    <!-- navbar -->
    <nav class="bg-rose-800 text-white px-6 py-4 shadow-lg sticky top-0 z-50">...</nav>

    <!-- Hero -->
    <section class="bg-gradient-to-r from-rose-500 to-pink-600 text-white py-20 px-6 text-center">
        <h1 class="text-4xl md:text-5xl font-bold mb-4">✨ Glow with GlamCart</h1>
        <p class="text-lg md:text-xl max-w-2xl mx-auto opacity-90">Discover premium cosmetics for every skin tone</p>
        <a href="product.jsp" class="inline-block mt-6 bg-white text-rose-800 px-8 py-3 rounded-full font-semibold hover:bg-pink-100 transition shadow-lg">
            <i class="fas fa-shopping-bag mr-2"></i> Shop Now
        </a>
    </section>

    <!-- Categories -->
    <section class="max-w-7xl mx-auto px-6 py-12">
        <h2 class="text-2xl font-bold text-rose-800 mb-6 flex items-center gap-2">
            <i class="fas fa-th-large text-pink-500"></i> Shop by Category
        </h2>
        <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-4">
            <div class="bg-white p-4 rounded-xl shadow hover:shadow-md transition text-center border border-rose-100">
                <i class="fas fa-paint-brush text-3xl text-pink-500 mb-2"></i>
                <p class="font-medium">Makeup</p>
            </div>
            <div class="bg-white p-4 rounded-xl shadow hover:shadow-md transition text-center border border-rose-100">
                <i class="fas fa-leaf text-3xl text-green-500 mb-2"></i>
                <p class="font-medium">Skincare</p>
            </div>
            <div class="bg-white p-4 rounded-xl shadow hover:shadow-md transition text-center border border-rose-100">
                <i class="fas fa-wind text-3xl text-purple-500 mb-2"></i>
                <p class="font-medium">Fragrance</p>
            </div>
            <div class="bg-white p-4 rounded-xl shadow hover:shadow-md transition text-center border border-rose-100">
                <i class="fas fa-cut text-3xl text-amber-500 mb-2"></i>
                <p class="font-medium">Haircare</p>
            </div>
        </div>
    </section>

    <!-- Featured Products -->
    <section class="max-w-7xl mx-auto px-6 pb-16">
        <h2 class="text-2xl font-bold text-rose-800 mb-6 flex items-center gap-2">
            <i class="fas fa-star text-yellow-400"></i> Bestsellers
        </h2>
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
            <!-- Product cards with cosmetics -->
            <div class="bg-white rounded-xl shadow hover:shadow-lg transition p-4 border border-rose-100">
                <img src="https://picsum.photos/seed/beauty1/300/200" alt="Lipstick" class="rounded-lg w-full h-40 object-cover" />
                <h3 class="font-semibold mt-3 text-rose-800">Velvet Matte Lipstick</h3>
                <div class="flex items-center gap-1 text-yellow-400 text-sm">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                </div>
                <p class="text-lg font-bold text-rose-800 mt-1">₹1,299</p>
                <a href="productdetails.jsp" class="mt-3 inline-block w-full text-center bg-rose-700 text-white py-2 rounded-lg hover:bg-rose-800 transition">View Details</a>
            </div>
            <div class="bg-white rounded-xl shadow hover:shadow-lg transition p-4 border border-rose-100">
                <img src="https://picsum.photos/seed/beauty2/300/200" alt="Foundation" class="rounded-lg w-full h-40 object-cover" />
                <h3 class="font-semibold mt-3 text-rose-800">Hydrating Foundation</h3>
                <div class="flex items-center gap-1 text-yellow-400 text-sm">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                </div>
                <p class="text-lg font-bold text-rose-800 mt-1">₹2,499</p>
                <a href="productdetails.jsp" class="mt-3 inline-block w-full text-center bg-rose-700 text-white py-2 rounded-lg hover:bg-rose-800 transition">View Details</a>
            </div>
            <div class="bg-white rounded-xl shadow hover:shadow-lg transition p-4 border border-rose-100">
                <img src="https://picsum.photos/seed/beauty3/300/200" alt="Mascara" class="rounded-lg w-full h-40 object-cover" />
                <h3 class="font-semibold mt-3 text-rose-800">Lash Volumizing Mascara</h3>
                <div class="flex items-center gap-1 text-yellow-400 text-sm">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
                </div>
                <p class="text-lg font-bold text-rose-800 mt-1">₹899</p>
                <a href="productdetails.jsp" class="mt-3 inline-block w-full text-center bg-rose-700 text-white py-2 rounded-lg hover:bg-rose-800 transition">View Details</a>
            </div>
            <div class="bg-white rounded-xl shadow hover:shadow-lg transition p-4 border border-rose-100">
                <img src="https://picsum.photos/seed/beauty4/300/200" alt="Perfume" class="rounded-lg w-full h-40 object-cover" />
                <h3 class="font-semibold mt-3 text-rose-800">Floral Eau de Parfum</h3>
                <div class="flex items-center gap-1 text-yellow-400 text-sm">
                    <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                </div>
                <p class="text-lg font-bold text-rose-800 mt-1">₹3,999</p>
                <a href="productdetails.jsp" class="mt-3 inline-block w-full text-center bg-rose-700 text-white py-2 rounded-lg hover:bg-rose-800 transition">View Details</a>
            </div>
        </div>
    </section>

    <footer class="bg-rose-900 text-rose-300 text-sm py-6 mt-auto">...</footer>
</body>
</html>