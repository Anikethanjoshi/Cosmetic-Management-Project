<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>GlamCart · Checkout</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body class="bg-pink-50 flex flex-col min-h-screen">
    <nav class="bg-rose-800 text-white px-6 py-4 shadow-lg sticky top-0 z-50">...</nav>

    <main class="max-w-3xl mx-auto px-6 py-10 flex-grow">
        <h1 class="text-3xl font-bold text-rose-800 mb-6"><i class="fas fa-check-circle mr-3 text-green-600"></i>Checkout</h1>
        <div class="bg-white rounded-2xl shadow p-6 border border-rose-100">
            <form action="CheckoutServlet" method="post">
                <h2 class="font-bold text-rose-800 text-lg">Delivery Address</h2>
                <div class="grid grid-cols-2 gap-4 mt-2">
                    <div class="col-span-2">
                        <input type="text" name="address" placeholder="Address" value="123 Beauty Lane, City" class="w-full p-3 border border-rose-200 rounded-xl focus:ring-2 focus:ring-rose-200 outline-none" />
                    </div>
                    <div>
                        <input type="text" name="pincode" placeholder="Pincode" value="110001" class="w-full p-3 border border-rose-200 rounded-xl focus:ring-2 focus:ring-rose-200 outline-none" />
                    </div>
                    <div>
                        <input type="text" name="mobile" placeholder="Mobile" value="9876543210" class="w-full p-3 border border-rose-200 rounded-xl focus:ring-2 focus:ring-rose-200 outline-none" />
                    </div>
                </div>

                <h2 class="font-bold text-rose-800 text-lg mt-6">Payment Method</h2>
                <div class="space-y-2 mt-2">
                    <label class="flex items-center gap-2"><input type="radio" name="paymentMethod" value="card" checked /> Credit/Debit Card</label>
                    <label class="flex items-center gap-2"><input type="radio" name="paymentMethod" value="upi" /> UPI</label>
                    <label class="flex items-center gap-2"><input type="radio" name="paymentMethod" value="netbanking" /> Net Banking</label>
                </div>

                <!-- Order summary (read-only) -->
                <div class="border-t mt-6 pt-4 border-rose-100">
                    <p class="text-rose-500">Subtotal: ₹1,299</p>
                    <p class="text-rose-500">Shipping: ₹50</p>
                    <p class="text-2xl font-bold text-rose-800">Total: ₹1,349</p>
                </div>

                <button type="submit" class="w-full mt-6 bg-green-600 hover:bg-green-700 text-white font-bold py-3 rounded-xl transition"><i class="fas fa-lock mr-2"></i> Place Order</button>
            </form>
        </div>
    </main>

    <footer class="bg-rose-900 text-rose-300 text-sm py-6 mt-auto">...</footer>
</body>
</html>