defmodule BeesKnees do
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
    IO.puts "last clause #{head} #{n}"
    head + n
  end

  def caesar([head|tail], n) do
    IO.puts "#{head}"
    (head + n) ++ caesar(tail, n)
  end
end
