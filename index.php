<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login | admin</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="./css/styles.css">
<!------ Include the above in your HEAD tag ---------->
</head>
<body>


<div class="login-reg-panel">
		<div class="login-info-box">
			<h2>Tienes una cuenta?</h2>
			<p>Lorem ipsum dolor sit amet</p>
			<label id="label-register" for="log-reg-show">Login</label>
			<input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked">
		</div>
							
		<div class="register-info-box">
			<h2>Don't have an account?</h2>
			<p>Lorem ipsum dolor sit amet</p>
			<label id="label-login" for="log-login-show">Register</label>
			<input type="radio" name="active-log-panel" id="log-login-show">
		</div>
							
		<div class="white-panel">
			<div class="login-show">
				<h2>LOGIN</h2>
				<form action="back/login.php" method="POST">
				<input type="text" placeholder="Número de identificación" name="id" >
				<input type="password" placeholder="Contraseña" name="pass" >
				<input type="submit" value="Login">
				</form>
				<a href="">Olvido su contraseña?</a>
			</div>
			<div class="register-show">
				<h2>REGISTER</h2>
				<form method="post" action="back/register.php">
				<input type="text" placeholder="Número de identificación" name="id">
				<input type="text" placeholder="Nombre" name="name">
				<input type="password" placeholder="Contraseña" name="pass">
				<input type="submit" value="Register">
				</form>
			</div>
		</div>
	</div>
    <script src="js/index.js"></script>
</body>
</html>