FROM ciao:1.18.0

RUN apt-get update && \
    apt-get install -y libgomp1 && \
    rm -rf /var/lib/apt/lists/*

RUN ciao get github.com/spectector/spectector

ENTRYPOINT ["spectector"]
