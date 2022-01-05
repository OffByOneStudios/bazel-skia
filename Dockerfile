FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y python build-essential apt-transport-https curl gnupg git ninja-build \
    build-essential freeglut3-dev libfontconfig-dev libfreetype6-dev libgif-dev libgl1-mesa-dev \
    libglu1-mesa-dev libharfbuzz-dev libicu-dev libjpeg-dev libpng-dev libwebp-dev



RUN curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg
RUN mv bazel.gpg /etc/apt/trusted.gpg.d/
RUN echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN apt update && apt-get -y install bazel

RUN bazel help


ADD ./ /usr/local/src/bazel-skia/
WORKDIR /usr/local/src/bazel-skia/