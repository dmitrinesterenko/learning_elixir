defmodule BeeList do
  @moduledoc ~S"""
    The length of a line of bees can be counted by
    starting with a no bee line that has length 0
    and bee line of n is a 1 + length of the bee line of n - 1 bees

    Usage:
      bees = ["Charlie", "Anne", "Bob", "Nuff", "Chucky"]
      BeeList.length(bees) # 5
  """

  def length([]), do: 0
  # Passing in the "head" of the list as _ because we don't use it
  # Calling BeeList.length because otherwise there is no clarity
  # for which "length" function you mean and there is a conflict
  # with Kernel.length/1 function
  def length([_|tail]), do: 1 + BeeList.length(tail)
end
