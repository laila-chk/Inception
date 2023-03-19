FROM alpine:3.16.4


#install nginx:
RUN apk update; \
	apk add openrc nginx; \
	openrc ; \
	touch /run/openrc/softlevel; \
	echo 'rc_provide="loopback net"' >> /etc/rc.conf ; \
	sh; \
	rc-service nginx start;
#starting the service needs more than just this cmd..
COPY . .
