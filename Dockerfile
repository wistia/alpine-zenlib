FROM alpine
RUN apk update && apk add git g++ libtool automake autoconf make
RUN git clone https://github.com/MediaArea/ZenLib.git
WORKDIR /ZenLib/Project/GNU/Library
RUN ./autogen.sh && ./configure --enable-static && make && make install
