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

  def reduce([], acc, _function), do: acc
  def reduce([head | tail], acc, function) do
    reduce(tail, function.(head, acc), function)
  end

  def filter([], _function), do: []
  def filter([head | tail], function) do
    if function.(head) do
      [head | filter(tail, function)]
    else
      filter(tail, function)
    end
  end
end

# MyList.each(items, fn item -> IO.puts item.title end)
# MyList.each(items, fn item -> IO.puts String.upcase(item.title) end)
#
# MyList.map(items, fn item -> %{title: item.title, price: item.price * 1.1} end)
# MyList.map(items, fn item -> update_in(item.price, &(&1 * 1.1)) end)
# MyList.map(items, fn item -> update_in(item.title, &String.upcase/1) end)
#
# MyList.reduce(items, 0, fn item, acc -> item.price + acc end)
# MyList.reduce([10, 5, 5, 10], 0, &+/2)
# MyList.reduce([100, 20, 400, 200], 100, &max/2)
# 
# MyList.filter(items, fn item -> item.price < 70 end)
# MyList.filter(["Alex", "Mike", "Ana"], &String.starts_with?(&1, "A"))