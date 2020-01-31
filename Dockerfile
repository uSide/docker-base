FROM node:12-alpine

RUN apk --no-cache --update add python git g++ gcc gnupg libgcc make \
    alpine-sdk krb5 krb5-libs krb5-dev postgresql-client openssl python \
    linux-headers eudev-dev libusb-dev usbutils \
    py-pip bash && \
    pip install --upgrade pip && \
    pip install --upgrade b2 && \
    npm install -g pm2 @adonisjs/cli && \
    pm2 install pm2-logrotate