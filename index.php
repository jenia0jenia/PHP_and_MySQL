<html>
	<head>
		<title>A quick test</title>
	</head>
	<body>
	<!-- Предположим что в сесси есть ключ ... -->	
		<form action="upload.php" method="POST" enctype="multipart/form-data">
		  <p><b>Index of user:</b><br>
		  <input type="text" size="40" name="my_user" placeholder="What is your number, user? (0-9)">
		  </p>
			<input name="file" type="file">
			<input type="hidden" name="MAX_FILE_SIZE" value="3000000" />
			<input type="submit" name="submit" value="Submit">
		</form>

	</body>
</html>