FROM ubuntu:22.04

WORKDIR /app

RUN apt update && apt install -y glpk-utils


