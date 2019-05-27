[![](https://img.shields.io/docker/cloud/automated/keinos/api-bench.svg)](https://hub.docker.com/r/keinos/api-bench "View on Docker Hub") [![](https://img.shields.io/docker/cloud/build/keinos/api-bench.svg)](https://hub.docker.com/r/keinos/api-bench/builds "View builds on Docker Hub")

# Dockerfile of API-Bench

Benchmarks other container's API using [rakyll](https://github.com/rakyll)'s [`hey` tool](https://github.com/rakyll/hey).

```bash
docker pull keinos/api-bench
```

Mostly aim to use on `docker-compose` and benchmark other containers' API endpoint in the same docker network.

- Bench Tool: [rakyll/hey](https://github.com/rakyll/hey) @ GitHub
- Base Image: `keinos/alpine`
- Repositories:
  - Image: https://hub.docker.com/r/keinos/api-bench @ Docker Hub
  - Source: https://github.com/KEINOS/Dockerfile_of_API-Bench @ GitHub
- Issues: https://github.com/KEINOS/Dockerfile_of_API-Bench/issues @ GitHub

## Usage

```shellsession
$ docker run --rm bench:test -n 1 -c 1 -q 1 -z 2s http://[container name]:80/

Summary:
  Total:	2.5478 secs
  Slowest:	1.5328 secs
  Fastest:	1.5328 secs
  Average:	1.5328 secs
  Requests/sec:	0.3925


Response time histogram:
  1.533 [1]	|■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
  1.533 [0]	|
  1.533 [0]	|
  1.533 [0]	|
  1.533 [0]	|
  1.533 [0]	|
  1.533 [0]	|
  1.533 [0]	|
  1.533 [0]	|
  1.533 [0]	|
  1.533 [0]	|


Latency distribution:
  0% in 0.0000 secs
  0% in 0.0000 secs
  0% in 0.0000 secs
  0% in 0.0000 secs
  0% in 0.0000 secs
  0% in 0.0000 secs
  0% in 0.0000 secs

Details (average, fastest, slowest):
  DNS+dialup:	0.3010 secs, 1.5328 secs, 1.5328 secs
  DNS-lookup:	0.0081 secs, 0.0081 secs, 0.0081 secs
  req write:	0.0002 secs, 0.0002 secs, 0.0002 secs
  resp wait:	0.2717 secs, 0.2717 secs, 0.2717 secs
  resp read:	0.3694 secs, 0.3694 secs, 0.3694 secs

Status code distribution:
  [200]	1 responses
```
