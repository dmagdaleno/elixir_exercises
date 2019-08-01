docker build docker/v1/ -t dmagdaleno/elixir:v1

docker run -it --rm \
 --volume=/home/dmagdaleno/work/elixir/volume:/home/work/ \
 dmagdaleno/elixir:v1 bash

docker run -it --rm \
 --volume=/home/dmagdaleno/study/elixir/:/home/work/ \
 dmagdaleno/elixir:v1 bash