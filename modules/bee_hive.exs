defmodule BeeHive do
  import BeeCounter, only: [sum: 1]
  import BeeDivision, only: [gcd: 2]
  import BeeList
  # Do not need the Kernel.length function
  # we have a BeeList.length
  import Kernel, except: [length: 1]
  alias BeeDivision, as: B
  @bees ["Burt", "Bat", "Buzzy", "Bronco"]

  @moduledoc ~S"""
    Your standard issue bee hive full of be summation,
    greater common divisors, and bee management
  """
  def buzz do

    IO.puts sum(10)
    IO.puts gcd(10,2)
    IO.puts B.gcd(12,24)
    # Since there is already Kernel.length this is one way of making it work
    BeeList.length(@bees)
    # Not importing Kernel.length is another way
    length(@bees)
  end

end
