#!/bin/bash
naabu -disable-update-check -list targets.txt -exclude-file exclude.txt -o outputs/naabu_result.txt -top-ports 1000 \
&& httpx -list outputs/naabu_result.txt -o outputs/httpx_result.txt -server