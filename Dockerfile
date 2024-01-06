FROM rust:1.74.1-slim-bookworm

WORKDIR /app

RUN apt update
RUN apt install -y mold libssl-dev openssl pkg-config

COPY . .
RUN mold -run cargo build --release

ENTRYPOINT ["/app/target/release/teloxide-on-fly-io"]

