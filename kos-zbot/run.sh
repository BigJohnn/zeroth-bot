#!/bin/bash

PROTOC_VERSION=3.21.12
curl -LO "https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip"
unzip protoc-${PROTOC_VERSION}-linux-x86_64.zip -d $HOME/.local
export PATH="$HOME/.local/bin:$PATH"
