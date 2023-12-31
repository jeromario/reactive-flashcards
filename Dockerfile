FROM gradle:8.4-jdk17

RUN apt-get update && apt-get install -qq -y --no-recommends

ENV INSTALL_PATH /reactive-flascards

RUN mkdir $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY . .