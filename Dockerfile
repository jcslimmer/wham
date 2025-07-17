FROM ubuntu:20.04

RUN apt-get update && \
DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential \
    make \
    cmake \
    git \
    zlib1g-dev \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /wham

ENV PATH="/wham:${PATH}"

COPY . .

RUN make

CMD ["/bin/bash"]
