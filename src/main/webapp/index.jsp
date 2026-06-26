<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>GlamCart · Where Beauty Begins</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        .hero-gradient {
            background: linear-gradient(135deg, #be185d, #ec4899, #f472b6);
        }
        .floating {
            animation: float 6s ease-in-out infinite;
        }
        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
            100% { transform: translateY(0px); }
        }
        .brand-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 20px 40px -10px rgba(190, 24, 93, 0.2);
        }
    </style>
</head>
<body class="bg-pink-50 flex flex-col min-h-screen">

    <!-- Navbar (same as other pages) -->
    <nav class="bg-rose-800 text-white px-6 py-4 shadow-lg sticky top-0 z-50">
        <div class="max-w-7xl mx-auto flex items-center justify-between flex-wrap gap-4">
            <a href="index.jsp" class="text-2xl font-bold flex items-center gap-2">
                <i class="fas fa-spa text-pink-300"></i> GlamCart
            </a>
            <div class="hidden md:flex items-center gap-8 text-sm font-medium">
                <a href="index.jsp" class="hover:text-pink-200">Home</a>
                <a href="product.jsp" class="hover:text-pink-200">Products</a>
                <a href="myorder.jsp" class="hover:text-pink-200">My Orders</a>
            </div>
            <div class="flex items-center gap-4">
                <a href="cart.jsp" class="relative hover:text-pink-200 text-lg">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="absolute -top-2 -right-3 bg-red-500 text-white text-[10px] font-bold rounded-full h-5 w-5 flex items-center justify-center">3</span>
                </a>
                <div class="h-6 w-px bg-white/20 hidden sm:block"></div>
                <a href="profile.jsp" class="hover:text-pink-200 flex items-center gap-1">
                    <i class="fas fa-user-circle text-xl"></i>
                    <span class="hidden sm:inline text-sm">Guest</span>
                </a>
                <a href="login.jsp" class="text-sm bg-white/10 px-4 py-1.5 rounded-full hover:bg-white/20 transition">
                    <i class="fas fa-sign-in-alt mr-1"></i> Login
                </a>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="flex-grow">

        <!-- Hero Section -->
        <section class="hero-gradient text-white py-20 px-6 text-center relative overflow-hidden">
            <div class="absolute top-10 left-10 opacity-20 text-7xl floating">
                <i class="fas fa-leaf"></i>
            </div>
            <div class="absolute bottom-10 right-10 opacity-20 text-7xl floating" style="animation-delay: 2s;">
                <i class="fas fa-mask"></i>
            </div>
            <div class="relative z-10 max-w-4xl mx-auto">
                <h1 class="text-5xl md:text-6xl font-bold mb-4 drop-shadow-lg">
                    <i class="fas fa-heart text-pink-200"></i> Glow Up with GlamCart
                </h1>
                <p class="text-xl md:text-2xl mb-6 opacity-90">
                    Premium cosmetics for every skin tone — cruelty‑free, dermatologist‑tested, and made with love.
                </p>
                <div class="flex flex-col sm:flex-row justify-center gap-4">
                    <a href="product.jsp" class="bg-white text-rose-700 px-8 py-3 rounded-full font-semibold hover:bg-pink-100 transition shadow-lg transform hover:scale-105 duration-200">
                        <i class="fas fa-shopping-bag mr-2"></i> Shop Now
                    </a>
                    <a href="register.jsp" class="bg-rose-700/40 backdrop-blur-sm border-2 border-white text-white px-8 py-3 rounded-full font-semibold hover:bg-white/20 transition">
                        <i class="fas fa-user-plus mr-2"></i> Join Free
                    </a>
                </div>
                <p class="mt-6 text-sm opacity-80">
                    <i class="fas fa-check-circle mr-1"></i> Free shipping on orders over ₹999
                </p>
            </div>
        </section>

        <!-- Brand Features -->
        <section class="max-w-7xl mx-auto px-6 py-12">
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 text-center">
                <div class="bg-white p-6 rounded-2xl shadow brand-card transition border border-rose-100">
                    <div class="text-4xl text-pink-500 mb-3"><i class="fas fa-leaf"></i></div>
                    <h3 class="font-bold text-rose-800">100% Cruelty‑Free</h3>
                    <p class="text-rose-500 text-sm">Never tested on animals, always kind to nature.</p>
                </div>
                <div class="bg-white p-6 rounded-2xl shadow brand-card transition border border-rose-100">
                    <div class="text-4xl text-pink-500 mb-3"><i class="fas fa-droplet"></i></div>
                    <h3 class="font-bold text-rose-800">Dermatologist Tested</h3>
                    <p class="text-rose-500 text-sm">Safe for all skin types, even sensitive.</p>
                </div>
                <div class="bg-white p-6 rounded-2xl shadow brand-card transition border border-rose-100">
                    <div class="text-4xl text-pink-500 mb-3"><i class="fas fa-hand-sparkles"></i></div>
                    <h3 class="font-bold text-rose-800">Luxury Ingredients</h3>
                    <p class="text-rose-500 text-sm">Infused with vitamins, hyaluronic acid & natural extracts.</p>
                </div>
            </div>
        </section>

        <!-- Featured Categories (quick links) -->
        <section class="max-w-7xl mx-auto px-6 pb-8">
            <h2 class="text-2xl font-bold text-rose-800 mb-6 flex items-center gap-2">
                <i class="fas fa-th-large text-pink-500"></i> Explore Collections
            </h2>
            <div class="grid grid-cols-2 sm:grid-cols-4 gap-4">
                <a href="product.jsp?category=makeup" class="bg-white p-4 rounded-xl shadow hover:shadow-md transition text-center border border-rose-100 hover:border-rose-300">
                    <i class="fas fa-paint-brush text-3xl text-pink-500 mb-2"></i>
                    <p class="font-medium text-rose-800">Makeup</p>
                </a>
                <a href="product.jsp?category=skincare" class="bg-white p-4 rounded-xl shadow hover:shadow-md transition text-center border border-rose-100 hover:border-rose-300">
                    <i class="fas fa-leaf text-3xl text-green-500 mb-2"></i>
                    <p class="font-medium text-rose-800">Skincare</p>
                </a>
                <a href="product.jsp?category=fragrance" class="bg-white p-4 rounded-xl shadow hover:shadow-md transition text-center border border-rose-100 hover:border-rose-300">
                    <i class="fas fa-wind text-3xl text-purple-500 mb-2"></i>
                    <p class="font-medium text-rose-800">Fragrance</p>
                </a>
                <a href="product.jsp?category=haircare" class="bg-white p-4 rounded-xl shadow hover:shadow-md transition text-center border border-rose-100 hover:border-rose-300">
                    <i class="fas fa-cut text-3xl text-amber-500 mb-2"></i>
                    <p class="font-medium text-rose-800">Haircare</p>
                </a>
            </div>
        </section>

        <!-- Bestseller Teasers -->
        <section class="max-w-7xl mx-auto px-6 pb-16">
            <h2 class="text-2xl font-bold text-rose-800 mb-6 flex items-center gap-2">
                <i class="fas fa-star text-yellow-400"></i> Bestsellers
            </h2>
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-6">
                <!-- Product 1 -->
                <div class="bg-white rounded-xl shadow hover:shadow-lg transition p-4 border border-rose-100">
                    <img src="https://picsum.photos/seed/beauty1/300/200" alt="Lipstick" class="rounded-lg w-full h-40 object-cover" />
                    <h3 class="font-semibold mt-3 text-rose-800">Velvet Matte Lipstick</h3>
                    <div class="flex items-center gap-1 text-yellow-400 text-sm">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i>
                    </div>
                    <p class="text-lg font-bold text-rose-800 mt-1">₹1,299</p>
                    <a href="productdetails.jsp" class="mt-3 inline-block w-full text-center bg-rose-700 text-white py-2 rounded-lg hover:bg-rose-800 transition">View Details</a>
                </div>
                <!-- Product 2 -->
                <div class="bg-white rounded-xl shadow hover:shadow-lg transition p-4 border border-rose-100">
                    <img src="https://picsum.photos/seed/beauty2/300/200" alt="Foundation" class="rounded-lg w-full h-40 object-cover" />
                    <h3 class="font-semibold mt-3 text-rose-800">Hydrating Foundation</h3>
                    <div class="flex items-center gap-1 text-yellow-400 text-sm">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i>
                    </div>
                    <p class="text-lg font-bold text-rose-800 mt-1">₹2,499</p>
                    <a href="productdetails.jsp" class="mt-3 inline-block w-full text-center bg-rose-700 text-white py-2 rounded-lg hover:bg-rose-800 transition">View Details</a>
                </div>
                <!-- Product 3 -->
                <div class="bg-white rounded-xl shadow hover:shadow-lg transition p-4 border border-rose-100">
                    <img src="https://picsum.photos/seed/beauty3/300/200" alt="Mascara" class="rounded-lg w-full h-40 object-cover" />
                    <h3 class="font-semibold mt-3 text-rose-800">Lash Volumizing Mascara</h3>
                    <div class="flex items-center gap-1 text-yellow-400 text-sm">
                        <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i>
                    </div>
                    <p class="text-lg font-bold text-rose-800 mt-1">₹899</p>
                    <a href="productdetails.jsp" class="mt-3 inline-block w-full text-center bg-rose-700 text-white py-2 rounded-lg hover:bg-rose-800 transition">View Details</a>
                </div>
                <!-- Product 4 -->
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

        <!-- Call to Action: Newsletter / Social -->
        <section class="bg-rose-100 py-12 px-6 text-center">
            <div class="max-w-2xl mx-auto">
                <h2 class="text-3xl font-bold text-rose-800 mb-2">✨ Get 10% Off Your First Order</h2>
                <p class="text-rose-600 mb-4">Subscribe to our newsletter and receive exclusive beauty tips & offers.</p>
                <form action="SubscribeServlet" method="post" class="flex flex-col sm:flex-row gap-3 justify-center">
                    <input type="email" name="email" placeholder="Enter your email" required
                           class="px-4 py-3 rounded-full border border-rose-300 focus:ring-2 focus:ring-rose-400 outline-none flex-1 min-w-[200px]" />
                    <button type="submit" class="bg-rose-700 text-white px-6 py-3 rounded-full hover:bg-rose-800 transition shadow-md">
                        <i class="fas fa-paper-plane mr-2"></i> Subscribe
                    </button>
                </form>
                <div class="mt-6 flex justify-center gap-6 text-2xl text-rose-600">
                    <a href="#" class="hover:text-rose-800 transition"><i class="fab fa-instagram"></i></a>
                    <a href="#" class="hover:text-rose-800 transition"><i class="fab fa-youtube"></i></a>
                    <a href="#" class="hover:text-rose-800 transition"><i class="fab fa-pinterest"></i></a>
                    <a href="#" class="hover:text-rose-800 transition"><i class="fab fa-tiktok"></i></a>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer (shared) -->
    <footer class="bg-rose-900 text-rose-300 text-sm py-6 mt-auto">
        <div class="max-w-7xl mx-auto px-6 flex flex-col sm:flex-row items-center justify-between gap-4">
            <span>&copy; 2026 GlamCart — Beauty for everyone <i class="fas fa-heart text-pink-400"></i></span>
            <div class="flex gap-6">
                <a href="#" class="hover:text-white">Privacy</a>
                <a href="#" class="hover:text-white">Terms</a>
                <a href="#" class="hover:text-white">Support</a>
            </div>
        </div>
    </footer>

</body>
</html>