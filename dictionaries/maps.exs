defmodule BeeMap do
  @moduledoc """
    Maps of bees

    Usage
      BeeMap.bees # gets you a list of bees
      BeeMap.find_tall_bees(bees, 0.7) # find the taller bees
  """

  def bee do
    bee = %{ name: "Buzzy", height: 0.5}
    bee
  end

  def bees do
    [
    %{ name: random_bee_name, height: :rand.uniform()},
    %{ name: random_bee_name, height: :rand.uniform()},
    %{ name: random_bee_name, height: :rand.uniform()},
    %{ name: random_bee_name, height: :rand.uniform()},
    %{ name: random_bee_name, height: :rand.uniform()}
  ]
  end

  def bee_names do
    ["Buzzy", "Woody", "Bumble", "Stingy", "Queen Elizabeth", "Brian"]
  end

  def find_tall_bees(bees, how_tall) do
    for bee = %{height: height} <- bees,
      height > how_tall,
      do: IO.inspect bee
  end

  @doc """
    TODO: move this to BeeList module
  """
  def random_bee_name([head|[]], _index, _acc) do
    head
  end

  def random_bee_name([head|_tail], index, acc) when index == acc do
    head
  end

  def random_bee_name([_head|tail], index, acc) when index > acc do
    random_bee_name(tail, index, acc + 1)
  end

  def random_bee_name(list, index) do
    random_bee_name(list, index, 0)
  end

  def random_bee_name do
    random_bee_name(bee_names, :rand.uniform(length(bee_names)))
  end
end
