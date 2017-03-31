defmodule Naive do
  defmodule Enum do
    #TODO
    #filter
    #at
    def find([], _fun) do
      nil
    end
    def find([head | rest], fun) do
      if fun.(head) do
        head
      else
        find(rest, fun)
      end
    end

    # hd -> next -> el2
    def reverse(list), do: reverse(list, [])
    defp reverse([], acc), do: acc
    # [1, 2, 3], []
    # [2, 3] [1]
    # [3] [2, 1]
    # [] [3, 2, 1]
    defp reverse([ head | rest ], acc) do
      reverse(rest, [head | acc])
    end

    def map(enumerable, map_fun) do
      reduce(enumerable, [], fn x, acc ->
        [map_fun.(x) | acc]
      end) |> reverse
    end

    # Lists
    def reduce([], acc, _fun), do: acc
    def reduce([x | rest], acc, fun) do
      acc = fun.(x, acc)
      reduce(rest, acc, fun)
    end
  end
end
