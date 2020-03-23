FROM ubuntu:latest
WORKDIR /root

RUN apt-get update&&\
  apt-get -y upgrade&&\
  apt-get -y install curl sudo&&\
  curl -sL https://deb.nodesource.com/setup_13.x | bash -&&\
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -&&\
  echo "deb https://dl.yarnpkg.com/debian/ stable main" |\
    tee /etc/apt/sources.list.d/yarn.list&&\
  apt-get install -y\
    autoconf\
    automake\
    bash-completion\
    build-essential\
    cmake\
    cppcheck\
    g++\
    gdal-bin\
    git\
    libboost-program-options-dev\
    libbz2-dev\
    libexpat1-dev\
    libgles2-mesa-dev\
    libglfw3-dev\
    libsqlite3-dev\
    libtool\
    man\
    nano\
    nginx\
    nodejs\
    osmium-tool\
    pkg-config\
    ruby\
    sqlite\
    tmux\
    vim\
    yarn\
    zip\
    zlib1g-dev&&\ 
  git clone https://github.com/mapbox/tippecanoe&&\
  cd tippecanoe; make -j3 LDFLAGS="-latomic"; sudo make install; cd ..&&\
  rm -rf tippecanoe&&\
  sudo yarn global add\
    browserify\
    budo\
    hjson\
    pm2\
    rollup\
    @mapbox/mapbox-gl-style-spec\
    @mapbox/mapbox-gl-native\
    @pushcorn/hocon-parser&&\
  git clone https://github.com/ibesora/vt-optimizer&&\
  cd vt-optimizer; npm install; cd ..

