SET ambientePath = /c/Users/veni/Desktop/docker/php56docker
docker run -d -i  ^
	   --name php56docker ^
	   -p 8000:80 ^
	   -v %ambientePath%/www:/var/www ^
	   -v %ambientePath%/logs:/var/logs ^
veni:php56docker