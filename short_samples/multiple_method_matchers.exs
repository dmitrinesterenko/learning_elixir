
defmodule Geometry do 
    def area({:rectangle, w, h}) do
     	w * h
    end

    def area({:circle, r}) when is_number r do
 	3.14565747 * r * r
    end
end

IO.puts Geometry.area({:rectangle, 10, 20})
IO.puts Geometry.area({:circle, 5})
IO.puts Geometry.area({:circle, "five"})
