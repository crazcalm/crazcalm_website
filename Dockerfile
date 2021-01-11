FROM rust:1.49

WORKDIR /usr/src/crazcalm_website

COPY . .

RUN cargo install --path .

ENV RUST_LOG=trace

CMD ["crazcalm_website"]
