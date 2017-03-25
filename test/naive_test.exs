defmodule NaiveTest do
  use ExUnit.Case

  import Naive.Enum

  describe "Enum.map" do
    test "should allow addition on elements" do
      a = Enum.to_list(1..10)
      assert Naive.Enum.map(a, fn x -> x + 1 end) == [2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    end

    test "should be able to upcase" do
      assert map(["khaja", "mujju", "zainab"], &String.upcase/1) == ["KHAJA", "MUJJU", "ZAINAB"]
    end

  end

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

    test "can add using reduce with multiple elements" do
      a = 1..10 |> Enum.to_list
      assert reduce(a, 0, fn x, acc -> x + acc end) == 55
    end

    test "can multiply using reduce with multiple elements" do
      a = 1..10 |> Enum.to_list
      assert reduce(a, 1, fn x, acc -> x * acc end) == 3628800
    end
  end

  describe "Enum.reverse" do
    test "empyt list should return an empty list" do
      assert reverse([]) == []
    end
    test "should reverse a list" do
      a = Enum.to_list(1..3)
      assert reverse(a) == [3, 2, 1]
    end

    test "should reverse a large list" do
      reversed_list = 1..10 |> Enum.to_list |> reverse
      assert reversed_list == Enum.to_list(10..1)
    end
  end


end
