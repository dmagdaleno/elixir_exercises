apply_tax = fn price -> 
  IO.puts("# Price: #{Float.round(price * 1.12, 4)} - Tax: #{price * 0.12}")
end

apply_tax = fn price -> 
  tax = price * 0.12
  IO.puts("# Price: #{price + tax} - Tax: #{tax}")
end