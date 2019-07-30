docker volume create workvol

docker run -it --rm --name elixir \
 -v workvol:/home/work/elixir_exercises \
 elixir:1.9.0-alpine