#!/bin/bash

set -e

## xcode
xcode-select --install

## Rust tools
cargo install bore-cli # cli tcp tunnel
