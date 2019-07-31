defmodule TRSum do
  def up_to(0), do: 0
  def up_to(n), do: up_to_acc(n - 1, n)

  defp up_to_acc(0, acc), do: acc
  defp up_to_acc(n, acc), do: up_to_acc(n - 1, n + acc)
end