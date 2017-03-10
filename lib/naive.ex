defmodule Naive do
  defmodule Enum do

    def map(enumerable, map_fun) do
      reduce(enumerable, [], fn x, acc ->
        [map_fun.(x) | acc]
      end) |> Elixir.Enum.reverse
    end

    # Lists
    def reduce([], acc, _fun), do: acc
    def reduce([x | rest], acc, fun) do
      acc = fun.(x, acc)
      reduce(rest, acc, fun)
    end
  end
end
