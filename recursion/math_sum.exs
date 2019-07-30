defmodule Math do
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
end

Math.sum([1, 2, 3])
# 6

Math.sum([])
# 0