FROM alpine AS build

ENV SOLC_EXEC=solc
ENV SOLC_URL=https://github.com/tronprotocol/solidity/releases/download/tv_0.5.9/solidity-linux_0.5.9_Odyssey_v3.6.6.zip

WORKDIR /src

RUN apk update && \
    apk add curl unzip

RUN curl ${SOLC_URL} -L -o solc.zip && \
    unzip solc.zip && \
    mv ${SOLC_EXEC} solc

FROM alpine

WORKDIR /usr/local/bin
COPY --from=build /src/solc /usr/local/bin/solc

ENTRYPOINT [ "solc" ]
