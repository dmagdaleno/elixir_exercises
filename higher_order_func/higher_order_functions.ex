defmodule HigherOrderFunctions do
  def compose(f, g) do
    fn arg -> f.(g.(arg)) end
  end
end

# HigherOrderFunctions.compose(&String.upcase/1, &String.first/1).("test")
# "T"
#
# func = &(&1 |> String.first |> String.upcase)  
# func.("test")
# "T"
#
# "test" |> String.first |> String.upcase
# "T"

