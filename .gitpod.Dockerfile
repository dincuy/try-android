FROM gitpod/workspace-full

# Install Android SDK
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    openjdk-11-jdk \
    wget \
    unzip && \
    wget -q https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip -O android-sdk.zip && \
    unzip android-sdk.zip -d $HOME/android-sdk && \
    rm android-sdk.zip

ENV ANDROID_SDK_ROOT=$HOME/android-sdk

RUN yes | $HOME/android-sdk/cmdline-tools/bin/sdkmanager --licenses
