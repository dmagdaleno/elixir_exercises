defmodule Navigator do
  @max_depth 2

  def navigate(dir) do
    expanded_dir = Path.expand(dir)
    go_through([expanded_dir], 0)
  end

  defp go_through([], _curr_depth), do: nil
  defp go_through(_dirs, curr_depth) when curr_depth > @max_depth, do: nil
  defp go_through([content | rest], curr_depth) do
    print_and_navigate(content, File.dir?(content), curr_depth)
    go_through(rest, curr_depth)
  end

  defp print_and_navigate(_dir, false, _curr_depth), do: nil
  defp print_and_navigate(dir, true, curr_depth) do
    IO.puts dir
    children_dirs = File.ls!(dir)
    go_through(expand_dirs(children_dirs, dir), curr_depth + 1)
  end

  defp expand_dirs([], _relative_to), do: []
  defp expand_dirs([dir | dirs], relative_to) do
    expanded_dir = Path.expand(dir, relative_to)
    [expanded_dir | expand_dirs(dirs, relative_to)]
  end
end