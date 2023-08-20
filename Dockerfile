FROM ubuntu:latest

WORKDIR /app

COPY main.cpp .

RUN apt-get update && apt-get install -y g++
RUN g++ -o hello_world main.cpp

CMD ["./hello_world"]
