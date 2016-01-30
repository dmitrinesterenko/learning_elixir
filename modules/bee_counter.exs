defmodule BeeCounter do
  @moduledoc ~S"""
    Because bees are good
    Counting bees involves summing all of the bees
    Thus when we have 2 bees they are actually like 3 bees
    Usage:
      BeeCounter.sum(2) # 3
      # 3 bees are as good as 6 bees
      BeeCounter.sum(3) # 6

      # When the bees are having a negative outlook
      # we flip their frowns upside down and turn them
      # positive by using abs(bee_count)

      BeeCounter.sum(-3) # 6
  """
  def sum(0), do: 0
  def sum(n) when n > 0, do: n + sum(n-1)
  def sum(n) when n < 0, do: abs(n) + sum(abs(n)-1)

end
