FROM alpine:latest

ENV PATH ${PATH}:/root/.cabal/bin
COPY mitch.tishmack@gmail.com-55881c97.rsa.pub /etc/apk/keys/mitch.tishmack@gmail.com-55881c97.rsa.pub

RUN echo "https://s3-us-west-2.amazonaws.com/alpine-ghc/7.10" >> /etc/apk/repositories && \
    apk update && \
    apk add ghc cabal-install bash linux-headers musl-dev gmp-dev zlib-dev make && \
    cabal update

WORKDIR /tmp
CMD ["bash"]
