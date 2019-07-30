defmodule TaxCalculator do
  def calc(salary) when salary <= 2000, do: 0
  def calc(salary) when salary <= 3000, do: salary * 0.05
  def calc(salary) when salary <= 6000, do: salary * 0.1
  def calc(salary), do: salary * 0.15
end

input = IO.gets "Write your salary:\n"
msg = case Float.parse(input) do
  :error -> 
    "Invalid salary: #{input}"
    
  {salary, _} ->
    tax = TaxCalculator.calc(salary)
    "Net wage: #{salary - tax} - Income tax: #{tax}"
end

IO.puts msg