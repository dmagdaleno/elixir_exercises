defmodule MyList do
  def max([]), do: nil
  def max([x]), do: x
  def max([first, second | rest]) when first >= second, do: find_max(first, rest)
  def max([first, second | rest]) when first < second, do: find_max(second, rest)

  defp find_max(max, []), do: max
  defp find_max(max, [head | tail]) when max >= head, do: find_max(max, tail)
  defp find_max(max, [head | tail]) when max < head, do: find_max(head, tail)

  def min([]), do: nil
  def min([x]), do: x
  def min([first, second | rest]) when first <= second, do: find_min(first, rest)
  def min([first, second | rest]) when first > second, do: find_min(second, rest)

  defp find_min(min, []), do: min
  defp find_min(min, [head | tail]) when min <= head, do: find_min(min, tail)
  defp find_min(min, [head | tail]) when min > head, do: find_min(head, tail)
    
end