FROM rust:1.74.1-slim-bookworm as builder

# Thanks: https://dev.to/rogertorres/first-steps-with-docker-rust-30oi

# Create new build dir
RUN USER=root cargo new --bin app
WORKDIR /app

# copy over your manifests
COPY ./Cargo.lock ./Cargo.lock
COPY ./Cargo.toml ./Cargo.toml

# this build step will cache your dependencies
RUN apt update && \
    apt install -y libssl-dev openssl pkg-config
RUN cargo build --release
RUN rm src/*.rs

# copy your source tree
COPY ./src ./src

# build for release
RUN rm ./target/release/deps/*
RUN cargo build --release

# our final base
FROM debian:bookworm-slim
WORKDIR /app

# image 'debian:bookworm-slim' needs ca-certificates package for TLS
RUN apt-get update && \
    apt install -y ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# copy the build artifact from the build stage, 
COPY --from=builder /app/target/release/teloxide-on-fly-io .

# set the startup command to run your binary
CMD ["./teloxide-on-fly-io"]

