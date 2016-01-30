defmodule BeeDivision do
  @moduledoc ~S"""
    Few things are as important as the division of labor among bees
    Here we implement a pass at some functions to provide the
    ability to divide bee labor.

    Usage:
      beegroup1 = 6
      beegroup2 = 3
      # What is the greatest common divider of the two bee group numbers?
      BeeDivision.gcd(beegroup1, beegroup2) # 3
  """

  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y,rem(x,y))
end
