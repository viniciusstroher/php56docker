#SET ambientePath = /c/Users/veni/Desktop/docker/php56docker
docker run -d -i  ^
	   --name php56docker ^
	   -p 8000:80 ^
	   -v /c/Users/veni/Desktop/docker/php56docker/www:/www ^
	   -v /c/Users/veni/Desktop/docker/php56docker/logs:/var/logs ^
veni:php56docker