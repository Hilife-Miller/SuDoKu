defmodule SudokuTest do
  use ExUnit.Case
  doctest Sudoku

  test "greets the world" do
    assert Sudoku.hello() == :world
  end

  test "Should return a square" do
    assert (Sudoku.square(Sudoku.fullboard))
  end
end
