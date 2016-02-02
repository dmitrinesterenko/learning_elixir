defmodule BeeHive do
  import BeeCounter, only: [sum: 1]
  import BeeDivision, only: [gcd: 2]
  import BeeList
  # do not need the Kernel.length function
  # we have a BeeList.length
  import Kernel, except: [length: 1]

  @moduledoc ~S"""
    Your standard issue bee hive full of summed bees,
    greater common divisors, and bee management
  """
  def buzz do
    bees = ["Burt", "Bat", "Buzzy", "Bronco"]
    sum(10)
    gcd(10,2)
    # Since there is already Kernel.length this is one way of making it work
    BeeList.length(bees)
    # Not importing Kernel.length is another way
    length(bees)
  end

end
