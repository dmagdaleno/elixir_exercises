defmodule TaxCalculator do
  def calc(salary) when salary <= 2000, do: 0
  def calc(salary) when salary <= 3000, do: salary * 0.05
  def calc(salary) when salary <= 6000, do: salary * 0.1
  def calc(salary), do: salary * 0.15
end