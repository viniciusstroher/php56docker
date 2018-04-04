
FROM centos:latest
MAINTAINER "vinicius" <viniciusferreirawk@gmail.com>

##
## Labels
##
LABEL \
	name="PHP 5.6 + APACHE" \
	image="php56docker" \
	vendor="veni" \
	license="MIT" \
	build-date="2018-03-29"

RUN rpm -i --nosignature -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
	rpm -i --nosignature -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm && \
	yum -y --nogpgcheck install httpd php56w php56w-cli php56w-common php56w-devel php56w-mbstring php56w-pecl-imagick php56w-xml php56w-mysql

VOLUME ["/var/www","/var/log"]

EXPOSE 80

COPY vhosts.conf /etc/httpd/conf.d/vhost.conf

COPY startserver.sh /

ENTRYPOINT ["/startserver.sh"]

#WORKDIR /var/www
