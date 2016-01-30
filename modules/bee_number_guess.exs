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
  def guess(mynumber, low..high) when mynumber in low..high do
    myguess =  makeguess(low..high)
    IO.puts "#{mynumber}, I guess #{myguess}, #{low}..#{high}"
    cond do
      myguess == mynumber -> IO.puts "You found me #{myguess}"
      myguess > mynumber -> guess(mynumber, low..myguess-1)
      myguess < mynumber -> guess(mynumber, myguess+1..high)
    end
  end

  def makeguess(low..high) do
    low+div((high-low), 2)
  end
end


BeeNumber.guess(1,1..10)
BeeNumber.guess(2,1..10)
BeeNumber.guess(7,1..10)
BeeNumber.guess(273,1..1000)
