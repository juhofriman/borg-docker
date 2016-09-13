FROM golang:1.6

RUN go get github.com/crufter/borg

RUN go install github.com/crufter/borg

ENTRYPOINT ["borg"]
