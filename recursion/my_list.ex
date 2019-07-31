defmodule MyList do
  def max([]), do: nil
  def max([x]), do: x
  def max(list) do
    find_max(0, list)
  end

  defp find_max(max, []), do: max
  defp find_max(max, [head | tail]) when max >= head, do: find_max(max, tail)
  defp find_max(max, [head | tail]) when max < head, do: find_max(head, tail)

  def min([]), do: nil
  def min([x]), do: x
  def min(list) do
    find_min(0, list)
  end

  defp find_min(min, []), do: min
  defp find_min(min, [head | tail]) when min <= head, do: find_min(min, tail)
  defp find_min(min, [head | tail]) when min > head, do: find_min(head, tail)
    
end