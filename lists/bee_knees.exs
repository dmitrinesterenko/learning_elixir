defmodule BeesKnees do
  @moduledoc ~S"""
    sum my bees
    find the biggest bee
    Apply Caesar's cryptography

    Usage:
      BeesKnees.sum([1,2,3,1000])
      BeesKnees.biggest_bee([1,2,1000,-5])
      BeesKnees.caesar('bees', 13)
  """
  def sum([]), do: 0
  def sum([head|[]]), do: head + sum([])
  def sum([head|tail]), do: head + sum(tail)

  def summy([head|[]], fun), do: fun.(head)
  def summy([head|tail],fun) do
    fun.(head) + summy(tail,fun)
  end

  def biggest_bee([head|tail]) do
    _biggest_bee([head|tail], head)
  end

  defp _biggest_bee([head|[]], acc) do
    if head > acc do
      acc = head
    end
    acc
  end

  defp _biggest_bee([head|tail], acc) do
    if head > acc do
      acc = head
    end
    _biggest_bee(tail,acc)
  end

  def caesar([head|[]],n) do
    trace("last clause #{head} #{n}")
    [_caesar(head, n)]
  end

  def caesar([head|tail], n) do
    trace("#{head}")
   [_caesar(head, n)] ++ caesar(tail, n)
  end

  def _caesar(letter, n) when letter + n < 122
  do
    trace("#{(letter + n)}")
    letter + n
  end

  def _caesar(letter, n) when letter + n > 122
  do
   trace("#{(letter + n - 26)}")
   letter + n - 26
  end

  def trace(message) do
   IO.puts("Tracing: #{message}")
  end

  def up_to(from,to) when from == to do
    trace("Here you are #{to}")
  end

  def up_to(from,to) when from < to do
    trace("#{from}")
    up_to(from+1, to)
  end

  def up_to(from,to) when from > to do
    down_to(from,to)
  end

  def down_to(from,to) when from == to do
    up_to(from, to)
  end

  def down_to(from,to) when from > to do
    trace("#{from}")
    down_to(from-1, to)
  end
end
