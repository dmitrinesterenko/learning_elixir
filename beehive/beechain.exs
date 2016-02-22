defmodule BeeChain do
  def chain(input, fun_thing_to_apply) do
    fun_thing_to_apply.(input)
  end

  def message(input) do
    input <> make_mine(input)
  end

  def make_mine(input) do
    String.duplicate(input, 2)
  end

  def verify([]) do
    salt = "#{:random.uniform}"
    IO.puts salt
    salt
  end

  def verify([head|tail]) do
    message = message(head) <> verify(tail)
    IO.puts message
    message
  end


end

bees1 = ["Bert", "Buzzy", "Bender", "Beer", "Brendon"]
bees2 = bees1

IO.puts BeeChain.verify(bees1) == BeeChain.verify(bees1)
IO.puts BeeChain.verify(bees1) == BeeChain.verify(bees2)




