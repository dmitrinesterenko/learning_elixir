defmodule Bees do
  def make_honey(n), do: (n * 2)
  def triple(n), do: (n * 3)
  def quadruple_the_states_output(n), do: (make_honey(n) * make_honey(n))

  def busy_bee_season([queen_bee|[]]) do
    [make_honey(queen_bee)]
  end

  def busy_bee_season([queen_bee|other_bees]) do
    [make_honey(queen_bee)] ++ busy_bee_season(other_bees)
  end
end
