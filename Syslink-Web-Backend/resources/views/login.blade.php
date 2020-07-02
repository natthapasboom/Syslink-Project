<!DOCTYPE html>
<html lang="en">

<head>
	<title>Syslink | Login</title>

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	{{-- <link rel="icon" type="image/png" href="images/icons/favicon.ico" /> --}}
	<link rel="icon" href="../../dist/img/SyslinkLogo.png" type="image/x-icon">

	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!--===============================================================================================-->
</head>

<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="../../dist/img/SyslinkLogo.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" method="POST" action="{{ route('login') }}">
					@csrf
					<span class="login100-form-title" style="color: #C8404D">
						Syslink
						<hr>
						<div class="text-center p-t-12">
							<p>
								Human Resource
								<br>System
							</p>
						</div>
					</span>

					@if (Route::has('login'))
					@auth
					<div class="container-login100-form-btn">
						<p>คุณเข้าสู่ระบบอยู่แล้ว</p>

						<button class="login100-form-btn" onclick="../home">
							ไปเมนูหลัก
						</button>
					</div>
					@else
					<div class="wrap-input100 validate-input" data-validate="Username is required">
						<input class="input100 @error('username') is-invalid @enderror" name="username"
							value="{{ old('username') }}" autocomplete="username" autofocus type="text" name="username"
							placeholder="ชื่อผู้ใช้งาน" id="username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>

					</div>


					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100 @error('password') is-invalid @enderror" name="password"
							autocomplete="current-password" type="password" name="pass" placeholder="รหัสผ่าน">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="false"></i>
						</span>
						{{-- @error('password')
						<span class="invalid-feedback" role="alert">
							<strong>{{ $message }}</strong>
						</span>
						@enderror --}}
					</div>
					@error('username')

					<div class="text-center p-t-12">
						<p class="txt1" role="alert">
							<strong><i class="fa fa-exclamation-circle">&emsp;</i>ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง</strong>
						</p>
					</div>

					@enderror
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							ลงชื่อเข้าใช้
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							ลืมรหัสผ่าน?
						</span>
						<a class="txt2" href="#">
							กรุณาติดต่อแอดมิน

						</a>
					</div>
					@endauth
					@endif



					{{-- <div class="text-center p-t-136">
						<a class="txt2" href="{{route('register')}}">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div> --}}
				</form>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>

</html>