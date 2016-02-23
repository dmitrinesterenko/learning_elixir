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

  @doc """
    Make the first bee be sad
  """
  def sad_bee([head|_tail]) do
    Map.put_new(head, :feeling, "sad")
  end

  @doc """
    Make the first bee be bad
  """
  def bad_bee([head|_tail]) do
     %{head | name: "Walter"}
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
  @doc """
    :rand.uniform(n) returns 1...n so I have to start
    the accumulator from 1

    This is unfortunate off by one here we come
  """
  def random_bee_name(list, index) do
    random_bee_name(list, index, 1)
  end

  def random_bee_name do
    random_bee_name(bee_names, :rand.uniform(length(bee_names)))
  end
end
