################################################################################
#   Este Dockerfile cria uma imagem base  customizada para ionic 3.20          #
# image: dukitan/ionic:3.20                                                    #
################################################################################
FROM node:8.16.2-alpine
 
LABEL plataforma="Node 8.16, OpenJDK 8, Android API 28, Android NDK 17c, Ionic 3.20,"
LABEL ambiente="Build, dev, desenvolvimento, devel"
LABEL maintainer="davidferreira.fz@gmail.com"

ENV SDK_TOOLS_NUMBER "4333796"
ENV ANDROID_HOME "/opt/android"
ENV PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools


# Install JDK
RUN apk update && \
    apk add openjdk8 && \
    apk add gradle && \
    ln -s /usr/lib/jvm/java-1.8-openjdk/bin/javac /usr/bin/javac

# Download and extract Android Tools
RUN wget -q https://dl.google.com/android/repository/sdk-tools-linux-${SDK_TOOLS_NUMBER}.zip -O /tmp/tools.zip && \
    mkdir -p ${ANDROID_HOME} && \
    unzip -qq /tmp/tools.zip -d ${ANDROID_HOME} && \
    rm -v /tmp/tools.zip

# Install SDK Packages
RUN mkdir -p ~/.android/ && touch ~/.android/repositories.cfg && \
    yes | ${ANDROID_HOME}/tools/bin/sdkmanager "--licenses" && \
    ${ANDROID_HOME}/tools/bin/sdkmanager "platform-tools" "extras;android;m2repository" "extras;google;m2repository" && \
    ${ANDROID_HOME}/tools/bin/sdkmanager "build-tools;29.0.2" "platforms;android-28" && \
    ${ANDROID_HOME}/tools/bin/sdkmanager "ndk;17.2.4988734" && \
    ${ANDROID_HOME}/tools/bin/sdkmanager "--update"

# Install ionic
RUN npm install -g ionic@3.20 node-gyp node-sass@4.9 cordova @angular/cli --unsafe-perm=true --allow-root


# Create workspace
RUN mkdir -p /opt/app 
VOLUME ["/opt/app"]
WORKDIR /opt/app
