defmodule Sudoku do

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
  def rows(board) do
    board
  end
  def row(board,index) do
    Enum.at(board,index)
  end
  def col(board,index) do
    Enum.map(board, &Enum.at( &1, index))
  end
  def cols(board) do
    Enum.map((0..3), &(col(board, &1)))
  end
  def sq_coordinate(index) do
    {div(index, 2), rem(index, 2)}
  end
  def square(board, {r,c}) do
    board
    |> Enum.drop(r*2)
    |> Enum.take(2)
    |> Enum.map( & (&1 |> Enum.drop(c*2) |> Enum.take(2)))
    |> List.flatten
  end
  def square(board, index) do
    square(board, sq_coordinate(index))
  end
  def squares(board) do
    Enum.map((0..3), &(square(board, &1)))
  end
  def validtest (dirty) do
    clean =
      dirty
      |> Enum.reject(&(&1 == 0))
      |> Enum.uniq
    rinsed =
      dirty
      |> Enum.reject(&(&1 == 0))

    clean == rinsed
  end
  def boardvalid do

  end


end
