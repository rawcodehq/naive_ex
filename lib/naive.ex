defmodule Naive do
  defmodule Enum do
    # Lists
    def reduce([], acc, _fun) do
      acc
    end
    def reduce([x | rest], acc, fun) do
      acc = fun.(x, acc)
      reduce(rest, acc, fun)
    end
  end
end
