FROM ubuntu

RUN apt-get update && apt-get install -y \
    build-essential \
    make \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /wham

ENV PATH="/wham:${PATH}"

COPY . .

RUN make

CMD ["/bin/bash"]
