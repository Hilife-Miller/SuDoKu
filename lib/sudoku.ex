defmodule Sudoku do
  @moduledoc """
  Documentation for Sudoku.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Sudoku.hello
      :world

  """
  def hello do
    :world
  end
  def fullboard do
    [
      [1,2,3,4],
      [3,4,1,2],
      [2,3,4,1],
      [4,1,2,3]
    ]
  end
end
