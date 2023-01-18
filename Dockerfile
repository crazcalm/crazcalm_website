FROM rust:slim-buster

WORKDIR /usr/src/crazcalm_website

COPY . .

ENV RUST_LOG=trace

EXPOSE 8080

CMD ["cargo", "run"]
