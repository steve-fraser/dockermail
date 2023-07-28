FROM ubuntu

RUN apt update && apt install -y \
	msmtp \
	openssl \
	ca-certificates


# DOWNLOAD CERTS -------------------------
RUN update-ca-certificates
RUN ln -sf /usr/bin/msmtp /usr/sbin/sendmail
COPY mail/msmtprc /etc
COPY mail/template.txt /etc

