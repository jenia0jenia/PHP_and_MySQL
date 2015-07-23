<html>
	<head>
	  <title>Result of uploading</title>
	</head>
	<body>
	<!-- Предположим что в сесси есть ключ ... -->
	
		<?php		
		//будем работать с пользователем $my_user_id
		$my_user_id = $_POST['my_user'];
		if ((int) $my_user_id < 1 || (int) $my_user_id > 9) $my_user_id = 0;
		echo "<h4> Hello, %%username%%! Your's key is " . $my_user_id . ". </h4>";
		
		// нет проверки на валидность загружаемого файла
		// нет защиты от sql-инъекций
		
		
		// CREATE TABLE product (
			// id INT NOT NULL, 
			// name VARCHAR(255),
			// name_trans VARCHAR(255),
			// price INT,
			// small_text VARCHAR(30),
			// big_text VARCHAR(255),
			// user_id INT NOT NULL,
			// UNIQUE (id, user_id)
			// );
			
			// GRANT ALL ON test.* to 'root'@'localhost';
			// $query = "LOAD DATA INFILE '" . $dir_to_file.$name . 
			// "' INTO TABLE product FIELDS TERMINATED BY ';' ENCLOSED BY '\"';";
			// $dir_to_file = 'C:/Program Files (x86)/Zend/Apache2/htdocs/'; // ATENTION!
			//$query = mysqli_query($db_server, "set names cp1251");			
			
			if(isset($_POST['submit']))
			{
				$name      = $_FILES['file']['name'];  
				$tmp_name  = $_FILES['file']['tmp_name'];  
				$uploaddir = './';   
				
				if(isset($name))
				{
					if(!empty($name))
					{      
						if(move_uploaded_file($tmp_name, $uploaddir.$name))
						{
							echo '<h4> Uploaded successful!</h4>';
							
							/**
							//Work with MySQL
							//
							//*/	
							//echo $db_hostname . $db_username . $db_password . $db_database;
							
							// Try to connect
							require_once 'login.php';
							$db_server = mysqli_connect($db_hostname, $db_username, $db_password, $db_database);
							if (!$db_server) die ("Cannot connect to MySQL server: " . mysql_error());	
							mysqli_select_db($db_server, $db_database);
							// creates array for DB query
							$data_to_query = array(array());

							if (($handle = fopen($uploaddir.$name, "r")) !== FALSE) 
							{
								$num_row = 0;
								while (($file_data = fgetcsv($handle, 0, ";", '"')) !== FALSE) 
								{
									$num_col = count($file_data);
									// echo "<p> $num_col columns in row $num_row: <br></p>\n";

									for ($i = 0; $i < $num_col; $i++) 
									{
										switch ($i)
										{
											case 0:
												// echo "id: ";
												$data_to_query[$num_row]["id"] = $file_data[$i];
												break;
											case 1: 
												// echo "name: ";
												$data_to_query[$num_row]["name"] = $file_data[$i];
												break;
											case 2: 
												// echo "name_trans: ";
												$data_to_query[$num_row]["name_trans"] = $file_data[$i];
												break;
											case 3: 
												// echo "price: ";
												$data_to_query[$num_row]["price"] = $file_data[$i];
												break;
											case 4: 
												// echo "small_text: ";
												$data_to_query[$num_row]["small_text"] = $file_data[$i];
												break;	
											case 5: 
												// echo "big_text: ";
												$data_to_query[$num_row]["big_text"] = $file_data[$i];
												break;	
											case 6: 
												// echo "user_id: ";
												$data_to_query[$num_row]["user_id"] = $file_data[$i];
												break;
										}
										// echo $file_data[$i] . "<br>\n";
									}
									$num_row++;
								}
								fclose($handle);
							}
							
							$updates_row = 0;
							$inserts_row = 0;
							// print_r($data_to_query);
							foreach($data_to_query as $field) 
							{

								// removes tags
								
								$field['small_text'] = strip_tags($field['small_text']);
								if ($field["small_text"] === '') 
								{
									$field["small_text"] = substr($field["big_text"], 0, 30);
								}
								
								//
								//при импорте, товары одного пользователя не должны затронуть товары другого пользователя
								//
								$query = sprintf("INSERT IGNORE INTO product VALUES ('%s', '%s', '%s', '%s', '%s', " . 
													"'%s', '%s');", $field['id'], $field['name'], $field['name_trans'], $field['price'],
													$field['small_text'], $field['big_text'], $field['user_id']);
								$result = mysqli_query($db_server, $query);
								// just add row
								if (mysqli_affected_rows($db_server) !== 0) {
									$inserts_row++;
									// $rows = mysqli_fetch_assoc($result);
								} elseif ($field['user_id'] === $my_user_id)
								{
									$updates_row++;
									$query = sprintf("UPDATE product SET name = '%s', name_trans = '%s', " . 
													"price = '%s', small_text = '%s', big_text = '%s' WHERE id = '%s' AND user_id = '%s';", $field['name'], $field['name_trans'], $field['price'], $field['small_text'], 
													$field['big_text'], $field['id'], $field['user_id']);
									$result = mysqli_query($db_server, $query);
								}
							}
							echo "<br><br> <h4> inserts $inserts_row / updates $updates_row </h4>";
							mysqli_close($db_server);
						}
					}       
				}  else {
					echo 'Please, upload file!';
				}
			}
		?>
	</body>
</html>