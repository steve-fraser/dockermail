FROM ubuntu

RUN apt update && apt install -y \
	msmtp \
	openssl \
	ca-certificates \
	gettext-base


# DOWNLOAD CERTS -------------------------
RUN update-ca-certificates
RUN ln -sf /usr/bin/msmtp /usr/sbin/sendmail

