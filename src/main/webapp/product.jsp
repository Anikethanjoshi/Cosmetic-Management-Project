<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>GlamCart · Products</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body class="bg-pink-50 flex flex-col min-h-screen">
    <nav class="bg-rose-800 text-white px-6 py-4 shadow-lg sticky top-0 z-50">...</nav>

    <main class="max-w-7xl mx-auto px-6 py-8 flex-grow">
        <div class="flex flex-col md:flex-row gap-6">
            <!-- Filters -->
            <aside class="w-full md:w-64 bg-white p-6 rounded-xl shadow h-fit border border-rose-100">
                <h3 class="font-bold text-rose-800 mb-4"><i class="fas fa-sliders-h mr-2"></i>Filters</h3>
                <form action="ProductFilterServlet" method="get" class="space-y-4">
                    <div>
                        <label class="block text-sm font-medium text-rose-600">Category</label>
                        <select name="category" class="w-full mt-1 p-2 border border-rose-200 rounded-lg focus:ring-2 focus:ring-rose-200 outline-none">
                            <option value="all">All</option>
                            <option value="makeup">Makeup</option>
                            <option value="skincare">Skincare</option>
                            <option value="fragrance">Fragrance</option>
                            <option value="haircare">Haircare</option>
                        </select>
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-rose-600">Price Range</label>
                        <div class="flex gap-2 mt-1">
                            <input type="number" name="minPrice" placeholder="Min" class="w-1/2 p-2 border border-rose-200 rounded-lg" />
                            <input type="number" name="maxPrice" placeholder="Max" class="w-1/2 p-2 border border-rose-200 rounded-lg" />
                        </div>
                    </div>
                    <button type="submit" class="w-full bg-rose-700 text-white py-2 rounded-lg hover:bg-rose-800 transition">Apply</button>
                </form>
            </aside>

            <!-- Product Grid -->
            <div class="flex-1">
                <div class="flex justify-between items-center mb-4">
                    <h2 class="text-2xl font-bold text-rose-800">All Products</h2>
                    <span class="text-sm text-rose-500">Showing 1-8 of 32</span>
                </div>
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
                    <!-- repeat product cards with cosmetics names -->
                    <div class="bg-white rounded-xl shadow hover:shadow-lg transition p-4 border border-rose-100">
                        <img src="https://picsum.photos/seed/beauty5/300/200" alt="Product" class="rounded-lg w-full h-40 object-cover" />
                        <h3 class="font-semibold mt-3 text-rose-800">Nude Lip Gloss</h3>
                        <div class="flex items-center gap-1 text-yellow-400 text-sm"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
                        <p class="text-lg font-bold text-rose-800 mt-1">₹799</p>
                        <a href="productdetails.jsp" class="mt-3 inline-block w-full text-center bg-rose-700 text-white py-2 rounded-lg hover:bg-rose-800 transition">View Details</a>
                    </div>
                    <!-- add more cards -->
                </div>
            </div>
        </div>
    </main>

    <footer class="bg-rose-900 text-rose-300 text-sm py-6 mt-auto">...</footer>
</body>
</html>