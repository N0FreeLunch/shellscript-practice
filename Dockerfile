FROM alpine
LABEL maintainer="N0FreeLunch"

RUN echo "test"

ENV GROUP=docker
ENV USER=user
ENV ROOTDIR=/home/user

# install Bash shell
RUN apk update \
    && apk upgrade \
    && apk add bash \
    && apk add tzdata \
    && cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime


RUN addgroup -S $GROUP \
    && adduser -S $USER -G $GROUP

USER $USER

