<?php
	//database configuration
	DEFINE ('DB_USER', 'root');	 
    DEFINE ('DB_PASSWORD', '');
	DEFINE ('DB_HOST', 'localhost');
	DEFINE ('DB_NAME', 'news');
				 
	$mysqli = @mysql_connect (DB_HOST, DB_USER, DB_PASSWORD) OR die ('Could not connect to MySQL');
	@mysql_select_db (DB_NAME) OR die ('Could not select the database');
?>