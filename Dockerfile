FROM rust:1.59-slim-buster

WORKDIR /usr/src/crazcalm_website

COPY ./target/release/crazcalm_website .
COPY ./html ./html

ENV RUST_LOG=trace

EXPOSE 3030

CMD ["./crazcalm_website"]
