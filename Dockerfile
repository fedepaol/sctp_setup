FROM alpine:latest

WORKDIR /sctp_policy
COPY ./policy/newsctp.pp .

