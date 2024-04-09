#!/bin/bash

 ulimit -n 120000
        yes 12345678 | injectived \
        --rpc.laddr "tcp://0.0.0.0:26657" \
        --statsd-address="host.docker.internal:8125" \
        --statsd-enabled=false \
        --statsd-agent=datadog \
        --chainstream-server "0.0.0.0:9999" \
        --wasm.memory_cache_size 3000 \
        start