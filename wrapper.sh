set -x
docker build -t massid:local-build . && docker run --rm --name massid --volume ./outputs:/massid/outputs massid:local-build