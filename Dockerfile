FROM iamparris/alpine-ohmyzsh:latest

ARG USER_ID
ARG GROUP_ID
ARG USER_NAME

RUN doas apk update \
    && doas apk add nodejs nodejs-npm \
    && doas npm install -g @vue/cli \
    && doas apk add vim py-pip \
    && doas pip install awscli

WORKDIR /project

EXPOSE 8000

ENTRYPOINT [ "zsh" ]  