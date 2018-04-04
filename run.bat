docker run -d -i  ^
	   --name php56docker ^
	   -p 8000:80 ^
	   -v www:/var/www ^
	   -v logs:/var/logs ^
veni:php56docker