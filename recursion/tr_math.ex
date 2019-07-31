defmodule TRMath do
  def sum([]), do: 0
  def sum([head | tail]), do: sum_acc(tail, head)

  defp sum_acc([], acc), do: acc
  defp sum_acc([head | tail], acc), do: sum_acc(tail, head + acc)
end