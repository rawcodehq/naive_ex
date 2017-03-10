defmodule NaiveTest do
  use ExUnit.Case

  import Naive.Enum

  describe "Enum.reduce" do
    test "returns acc for empty lists" do
      assert reduce([], 1, fn x, acc -> x + acc end) == 1
    end

    test "can add using reduce with a single element" do
      assert reduce([5], 3, fn x, acc -> x + acc end) == 8
    end

    test "can add using reduce with a two elements" do
      assert reduce([5, 9], 3, fn x, acc -> x + acc end) == 17
    end

    test "can add using reduce with a multiple elements" do
      a = 1..10 |> Enum.to_list
      assert reduce(a, 0, fn x, acc -> x + acc end) == 55
    end
  end
end
