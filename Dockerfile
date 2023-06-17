FROM codercom/code-server
RUN sudo apt-get update \
  && sudo apt-get install -y \
  wget \
  xz-utils \
  && wget https://nodejs.org/dist/v20.3.0/node-v20.3.0-linux-arm64.tar.xz \
  && tar -xf node-v20.3.0-linux-arm64.tar.xz \
  && sudo mv node-v20.3.0-linux-arm64 /usr/local/ \
  && sudo ln -s /usr/local/node-v20.3.0-linux-arm64/bin/node /usr/local/bin/node \
  && sudo ln -s /usr/local/node-v20.3.0-linux-arm64/bin/npm /usr/local/bin/npm
EXPOSE 8080