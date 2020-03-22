FROM ubuntu:18.04
RUN apt update && apt install -y openssl=1.1.1-1ubuntu2.1~18.04.5 sendmail=8.15.2-10
RUN cd /etc/mail && mkdir -p /etc/mail/auth 
RUN ls -l /etc/aliases
COPY config/sendmail.mc /etc/mail
COPY config/gmail-auth /etc/mail/auth
RUN chmod 700 /etc/mail/auth
RUN cd /etc/mail/auth && makemap hash gmail-auth <gmail-auth
RUN yes 'y' | sendmailconfig

EXPOSE 25
CMD while true; do sleep 1000; done
