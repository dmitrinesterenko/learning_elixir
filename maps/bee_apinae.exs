defmodule BeeApinae do
  @moduledoc """
    This is a bee with a name, some wings and maybe she's a queen
    Usage:
      %BeeApinae{name: "BeezelBub", wings: false, queen: false}
  """
  defstruct name: "", wings: true, queen: false

  def flying?(bee) do
    bee.wings == true && bee.queen == false
  end

  def call(%BeeApinae{name: name}) when name != "" do
    IO.puts "Hi there #{name}"
  end

  def queen?(%BeeApinae{name: name, queen: queen}) when queen == true do
    IO.puts "#{name} is a Queen!"
  end


end

