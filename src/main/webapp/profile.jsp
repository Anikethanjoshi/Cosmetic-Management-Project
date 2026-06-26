<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>GlamCart · Profile</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body class="bg-pink-50 flex flex-col min-h-screen">
    <nav class="bg-rose-800 text-white px-6 py-4 shadow-lg sticky top-0 z-50">...</nav>

    <main class="max-w-3xl mx-auto px-6 py-10 flex-grow">
        <h1 class="text-3xl font-bold text-rose-800 mb-6"><i class="fas fa-user-circle mr-3 text-pink-500"></i>My Profile</h1>
        <div class="bg-white rounded-2xl shadow p-6 border border-rose-100">
            <form action="UpdateProfileServlet" method="post" class="space-y-4">
                <div>
                    <label class="block text-sm font-medium text-rose-600">Username</label>
                    <input type="text" name="username" value="lisa_makeup" class="w-full p-3 border border-rose-200 rounded-xl focus:ring-2 focus:ring-rose-200 outline-none" />
                </div>
                <div>
                    <label class="block text-sm font-medium text-rose-600">Email</label>
                    <input type="email" name="email" value="lisa@beauty.com" class="w-full p-3 border border-rose-200 rounded-xl focus:ring-2 focus:ring-rose-200 outline-none" />
                </div>
                <div>
                    <label class="block text-sm font-medium text-rose-600">Mobile</label>
                    <input type="text" name="mobile" value="9876543210" class="w-full p-3 border border-rose-200 rounded-xl focus:ring-2 focus:ring-rose-200 outline-none" />
                </div>
                <div>
                    <label class="block text-sm font-medium text-rose-600">Address</label>
                    <input type="text" name="address" value="123 Beauty Lane, City" class="w-full p-3 border border-rose-200 rounded-xl focus:ring-2 focus:ring-rose-200 outline-none" />
                </div>
                <div>
                    <label class="block text-sm font-medium text-rose-600">Pincode</label>
                    <input type="text" name="pincode" value="110001" class="w-full p-3 border border-rose-200 rounded-xl focus:ring-2 focus:ring-rose-200 outline-none" />
                </div>
                <div>
                    <label class="block text-sm font-medium text-rose-600">New Password (leave blank to keep current)</label>
                    <input type="password" name="newPassword" placeholder="Enter new password" class="w-full p-3 border border-rose-200 rounded-xl focus:ring-2 focus:ring-rose-200 outline-none" />
                </div>
                <button type="submit" class="bg-rose-700 text-white px-6 py-3 rounded-xl hover:bg-rose-800 transition"><i class="fas fa-save mr-2"></i> Update Profile</button>
            </form>
        </div>
    </main>

    <footer class="bg-rose-900 text-rose-300 text-sm py-6 mt-auto">...</footer>
</body>
</html>