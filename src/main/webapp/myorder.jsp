<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>GlamCart · My Orders</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body class="bg-pink-50 flex flex-col min-h-screen">
    <nav class="bg-rose-800 text-white px-6 py-4 shadow-lg sticky top-0 z-50">...</nav>

    <main class="max-w-7xl mx-auto px-6 py-10 flex-grow">
        <h1 class="text-3xl font-bold text-rose-800 mb-6"><i class="fas fa-box mr-3 text-pink-500"></i>My Orders</h1>
        <div class="space-y-6">
            <!-- Order Card -->
            <div class="bg-white rounded-2xl shadow p-6 border border-rose-100">
                <div class="flex flex-wrap justify-between items-start">
                    <div>
                        <p class="font-bold text-rose-800">Order #GL101</p>
                        <p class="text-sm text-rose-500">Placed on: 15 Jun 2026</p>
                        <span class="inline-block mt-1 bg-yellow-100 text-yellow-800 text-xs px-3 py-1 rounded-full">Processing</span>
                    </div>
                    <p class="text-xl font-bold text-rose-800">₹1,349</p>
                </div>
                <div class="mt-4 flex gap-4 items-center border-t pt-4 border-rose-100">
                    <img src="https://picsum.photos/seed/beauty1/60/60" alt="Product" class="w-16 h-16 rounded object-cover" />
                    <div><p class="font-medium text-rose-800">Velvet Matte Lipstick</p><p class="text-sm text-rose-500">Qty: 1</p></div>
                </div>
                <form action="OrderDetailServlet" method="get" class="mt-4">
                    <input type="hidden" name="orderId" value="101" />
                    <button type="submit" class="text-pink-600 hover:underline text-sm"><i class="fas fa-eye mr-1"></i> View Details</button>
                </form>
            </div>
            <!-- repeat more orders -->
        </div>
    </main>

    <footer class="bg-rose-900 text-rose-300 text-sm py-6 mt-auto">...</footer>
</body>
</html>