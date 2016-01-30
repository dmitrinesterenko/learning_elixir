defmodule BeeNumber do
  @moduledoc ~S"""
    guessing the number from a range involves
    splitting the range into 2 and checking if the
    guessed number falls into the first or the second half
    until the guess is found to match the value in the half
    of the region exactly

    Usage:
      BeeNumber.guess(myguess, low..high)
  """

  def guess(myguess, low..high) when myguess == div(high-low,2) do
    IO.puts "You found me #{myguess}"
  end

  def guess(myguess, low..high) when myguess > div(high - low, 2) do
    IO.puts "#{low}..#{high}"
    IO.puts "#{myguess} > #{div(high-low,2)}"
    IO.puts "#{myguess}, #{(div(high-low,2)+1)}..#{high}"
    guess(myguess, (div(high - low, 2) + 1)..high)
  end

  def guess(myguess, low..high) when myguess < div(high - low, 2) do
    IO.puts "#{low}..#{high}"
    IO.puts "#{myguess} < #{div(high-low,2)}"
    IO.puts "#{myguess}, #{low}..#{(div(high-low,2) - 1)}"
    guess(myguess, low..(div(high-low,2) - 1))
  end

  def halfway(low..high) do
    div(high - low, 2)
  end

  # "Bad bad elixir"
 # def guess(myguess, low..high) when is_string(myguess) do
 #   halfway = div(high - low, 2) + 1
 #   if myguess === halway
 #     IO.puts "You found #{halfway}"
 #   elseif myguess > halfway
 #     guess(myguess, halfway..high)
 #   else
 #     guess(myguess, low..halfway)
 #   end
 # end
end

BeeNumber.guess(1,1..10)
BeeNumber.guess(2,1..10)
BeeNumber.guess(7,1..10)
