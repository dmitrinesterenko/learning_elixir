defmodule BeeHive do
  def book_room(%{height: height, name: name})
  when height > 0.7 do
    IO.puts "#{name} needs a tall hive door"
  end

  def book_room(%{height: _, name: name})
  when name == "Buzzy" or name == "Queen Elizabeth" do
    IO.puts "#{name} is the party starter"
  end

  def book_room(_) do
    IO.puts "Just let get some beezy rest"
  end
end
