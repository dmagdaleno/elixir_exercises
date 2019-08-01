defmodule MyList do
  def each([], _function), do: nil
  def each([head | tail], function) do
    function.(head)
    each(tail, function)
  end

  def map([], _function), do: []
  def map([head | tail], function) do
    [function.(head) | map(tail, function)]
  end
end

# MyList.each(items, fn item -> IO.puts item.title end)
# MyList.each(items, fn item -> IO.puts String.upcase(item.title) end)
#
# MyList.map(items, fn item -> %{title: item.title, price: item.price * 1.1} end)
# MyList.map(items, fn item -> update_in(item.price, &(&1 * 1.1)) end)