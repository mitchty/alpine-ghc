FROM mitchty/alpine-ghc

RUN apk add wget gzip && \
    cabal install alex happy && \
    cabal install c2hs && \
    cabal install hoogle && \
    hoogle data

WORKDIR /tmp
CMD ["bash"]
