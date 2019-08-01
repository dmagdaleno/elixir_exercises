defmodule MyList do
  def each([], _function), do: nil
  def each([head | tail], function) do
    function.(head)
    each(tail, function)
  end
end

# MyList.each(enchanted_items, fn item -> IO.puts item.title end)
# MyList.each(enchanted_items, fn item -> IO.puts String.upcase(item.title) end)