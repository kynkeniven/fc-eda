#FROM golang:1.20

#WORKDIR /app/

#RUN apt-get update && apt-get install -y librdkafka-dev


#CMD ["tail", "-f", "/dev/null"]


FROM golang:1.20 AS build
WORKDIR /app

COPY . .

RUN go get -u github.com/confluentinc/confluent-kafka-go/kafka
RUN apt-get update && apt-get install -y librdkafka-dev


# Build the Go application
RUN GOARCH=amd64 go build -o /app/api cmd/walletcore/main.go


FROM scratch
WORKDIR /app
COPY --from=build /app/api ./
EXPOSE 8080
CMD [ "./api" ]