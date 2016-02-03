defmodule BeesKnees do
  def sum([]), do: 0
  def sum([head|[]]), do: head + sum([])
  def sum([head|tail]), do: head + sum(tail)
end
