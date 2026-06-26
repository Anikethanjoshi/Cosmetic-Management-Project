<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body class="bg-pink-50 flex flex-col min-h-screen">

    <!-- same navbar -->
    <nav class="bg-rose-800 text-white px-6 py-4 shadow-lg sticky top-0 z-50">...</nav>

    <main class="flex-grow flex items-center justify-center px-4 py-12">
        <div class="w-full max-w-lg bg-white/80 backdrop-blur-sm rounded-2xl shadow-xl p-8 border border-white/60">
            <div class="text-center mb-6">
                <div class="inline-flex items-center justify-center h-14 w-14 rounded-full bg-rose-700 text-white text-2xl mb-3">
                    <i class="fas fa-user-plus"></i>
                </div>
                <h1 class="text-2xl font-bold text-rose-800">Create Account</h1>
                <p class="text-rose-500 text-sm">Create your beauty profile</p>
            </div>

            <form action="RegisterServlet" method="post" class="space-y-4">
                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <label class="block text-sm font-medium text-rose-700">Username</label>
                        <input type="text" name="username" value="lisa_makeup"
                               class="w-full px-4 py-2.5 rounded-xl border border-rose-200 bg-white focus:border-rose-400 focus:ring-2 focus:ring-rose-200 outline-none transition" />
                    </div>
                    <div>
                        <label class="block text-sm font-medium text-rose-700">Email</label>
                        <input type="email" name="email" value="lisa@beauty.com"
                               class="w-full px-4 py-2.5 rounded-xl border border-rose-200 bg-white focus:border-rose-400 focus:ring-2 focus:ring-rose-200 outline-none transition" />
                    </div>
                </div>
                <div>
                    <label class="block text-sm font-medium text-rose-700">Mobile No.</label>
                    <input type="text" name="mobile_no" value="9876543210"
                           class="w-full px-4 py-2.5 rounded-xl border border-rose-200 bg-white focus:border-rose-400 focus:ring-2 focus:ring-rose-200 outline-none transition" />
                </div>
                <div>
                    <label class="block text-sm font-medium text-rose-700">Address</label>
                    <input type="text" name="address" value="123 Beauty Lane, City"
                           class="w-full px-4 py-2.5 rounded-xl border border-rose-200 bg-white focus:border-rose-400 focus:ring-2 focus:ring-rose-200 outline-none transition" />
                </div>
                <div>
                    <label class="block text-sm font-medium text-rose-700">Pincode</label>
                    <input type="text" name="pincode" value="110001"
                           class="w-full px-4 py-2.5 rounded-xl border border-rose-200 bg-white focus:border-rose-400 focus:ring-2 focus:ring-rose-200 outline-none transition" />
                </div>
                <div>
                    <label class="block text-sm font-medium text-rose-700">Password</label>
                    <input type="password" name="password" value="password123"
                           class="w-full px-4 py-2.5 rounded-xl border border-rose-200 bg-white focus:border-rose-400 focus:ring-2 focus:ring-rose-200 outline-none transition" />
                </div>
                <button type="submit" class="w-full bg-rose-700 hover:bg-rose-800 text-white font-semibold py-3 rounded-xl transition shadow-md">
                    <i class="fas fa-user-plus mr-2"></i> Create Account
                </button>
            </form>
            <p class="text-center text-rose-500 text-sm mt-6">
                Already have an account?
                <a href="login.jsp" class="text-rose-700 font-semibold hover:underline">Sign in</a>
            </p>
        </div>
    </main>

    <footer class="bg-rose-900 text-rose-300 text-sm py-6 mt-auto">...</footer>
</body>
</html>