FROM golang:1.21.1-bookworm

WORKDIR /massid

RUN apt update \
    && apt install -y libpcap-dev

RUN go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@v2.1.7
RUN go install -v github.com/projectdiscovery/httpx/cmd/httpx@v1.3.5

COPY src/ .
COPY inputs/ .

ENTRYPOINT [ "/massid/run.sh" ]
# ENTRYPOINT [ "/bin/bash" ]
