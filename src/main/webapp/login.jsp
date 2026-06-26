<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>GlamCart · Login</title>
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body class="bg-pink-50 flex flex-col min-h-screen">

	<!-- Navbar -->
	<nav
		class="bg-rose-800 text-white px-6 py-4 shadow-lg sticky top-0 z-50">
		<div
			class="max-w-7xl mx-auto flex items-center justify-between flex-wrap gap-4">
			<a href="home.jsp" class="text-2xl font-bold flex items-center gap-2">
				<i class="fas fa-spa text-pink-300"></i> GlamCart
			</a>
			<div class="hidden md:flex items-center gap-8 text-sm font-medium">
				<a href="home.jsp" class="hover:text-pink-200">Home</a> <a
					href="product.jsp" class="hover:text-pink-200">Products</a> <a
					href="myorder.jsp" class="hover:text-pink-200">My Orders</a>
			</div>
			<div class="flex items-center gap-4">
				<a href="cart.jsp" class="relative hover:text-pink-200 text-lg">
					<i class="fas fa-shopping-cart"></i> <span
					class="absolute -top-2 -right-3 bg-red-500 text-white text-[10px] font-bold rounded-full h-5 w-5 flex items-center justify-center">3</span>
				</a>
				<div class="h-6 w-px bg-white/20 hidden sm:block"></div>
				<a href="profile.jsp"
					class="hover:text-pink-200 flex items-center gap-1"> <i
					class="fas fa-user-circle text-xl"></i> <span
					class="hidden sm:inline text-sm">Guest</span>
				</a>
			</div>
		</div>
	</nav>

	<main class="flex-grow flex items-center justify-center px-4 py-12">
		<div
			class="w-full max-w-md bg-white/80 backdrop-blur-sm rounded-2xl shadow-xl p-8 border border-white/60">
			<div class="text-center mb-8">
				<div
					class="inline-flex items-center justify-center h-14 w-14 rounded-full bg-rose-700 text-white text-2xl mb-3">
					<i class="fas fa-lock"></i>
				</div>
				<h1 class="text-2xl font-bold text-rose-800">Welcome Back</h1>
				<p class="text-rose-500 text-sm mt-1">Sign in to your beauty
					account</p>
			</div>

			<form action="login" method="post" class="space-y-5">
				<div>
					<label for="loginEmail"
						class="block text-sm font-medium text-rose-700 mb-1"> <i
						class="fas fa-envelope mr-1 text-rose-400"></i> Email or Username
					</label> <input type="text" id="loginEmail" name="username"
						value="lisa@beauty.com"
						class="w-full px-4 py-3 rounded-xl border border-rose-200 bg-white focus:border-rose-400 focus:ring-2 focus:ring-rose-200 outline-none transition" />
				</div>
				<div>
					<label for="loginPassword"
						class="block text-sm font-medium text-rose-700 mb-1"> <i
						class="fas fa-key mr-1 text-rose-400"></i> Password
					</label> <input type="password" id="loginPassword" name="password"
						value="password123"
						class="w-full px-4 py-3 rounded-xl border border-rose-200 bg-white focus:border-rose-400 focus:ring-2 focus:ring-rose-200 outline-none transition" />
				</div>
				<div class="flex items-center justify-between text-sm">
					<label class="flex items-center gap-2 text-rose-600 cursor-pointer">
						<input type="checkbox" checked class="accent-rose-700 w-4 h-4" />
						Remember me
					</label> <a href="#" class="text-rose-600 hover:underline">Forgot
						password?</a>
				</div>
				<button type="submit"
					class="w-full bg-rose-700 hover:bg-rose-800 text-white font-semibold py-3 rounded-xl transition shadow-md">
					<i class="fas fa-sign-in-alt mr-2"></i> Sign In
				</button>
			</form>

			<div class="flex items-center gap-4 my-6">
				<hr class="flex-1 border-rose-200" />
				<span class="text-xs text-rose-400 uppercase tracking-wider">or</span>
				<hr class="flex-1 border-rose-200" />
			</div>
			<div>
				<p class="text-center text-rose-500 text-sm mt-6">
					Don't have an account? <a href="register.jsp"
						class="text-rose-700 font-semibold hover:underline">Create one</a>
				</p>
			</div>
	</main>

	<footer class="bg-rose-900 text-rose-300 text-sm py-6 mt-auto">
		<div
			class="max-w-7xl mx-auto px-6 flex flex-col sm:flex-row items-center justify-between gap-4">
			<span>&copy; 2026 GlamCart — Beauty for everyone <i
				class="fas fa-heart text-pink-400"></i></span>
			<div class="flex gap-6">
				<a href="#" class="hover:text-white">Privacy</a> <a href="#"
					class="hover:text-white">Terms</a> <a href="#"
					class="hover:text-white">Support</a>
			</div>
		</div>
	</footer>
</body>
</html>