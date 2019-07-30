docker volume create workvol

docker run -it --rm --name elixir \
 -v workvol:/home/work/elixir_exercises \
 elixir:1.9.0-alpine

docker run -it --rm --name elixir-inst1 -v "$PWD":/usr/src/myapp -w /usr/src/myapp elixir:1.9.0-alpine elixir recursion/sum_up.exs