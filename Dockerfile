FROM alpine:latest

ENV PATH ${PATH}:/root/.cabal/bin
COPY mitch.tishmack@gmail.com-55881c97.rsa.pub /etc/apk/keys/mitch.tishmack@gmail.com-55881c97.rsa.pub

# Note: If you intend to build things that depend on Network, you will need
# to apk add linux-headers
#
# zlib-dev, musl-dev, and gmp-dev are all other packages you should ensure
# are installed depending on your needs or if you're installing from cabal
RUN echo "https://s3-us-west-2.amazonaws.com/alpine-ghc/8.0" >> /etc/apk/repositories && \
    apk add --no-cache ghc cabal stack

CMD ["bash"]
