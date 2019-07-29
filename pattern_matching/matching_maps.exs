map = %{:a => 1, :b => 2, :c => 3, :d => 4}
# %{a: 1, b: 2, c: 3, d: 4}

%{a: 1, d: 4} = map                        
# %{a: 1, b: 2, c: 3, d: 4}

%{a: 1, d: d_value} = map
# %{a: 1, b: 2, c: 3, d: 4}

%{a: 2, d: d_value} = map
# ** (MatchError) no match of right hand side value: %{a: 1, b: 2, c: 3, d: 4}