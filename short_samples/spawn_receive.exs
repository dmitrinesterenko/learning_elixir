
defmodule Geometry do
  def area_listener do
  	receive do
  		{:rectangle, w, h} ->
  			IO.puts("Area = #{w * h}")
  			area_listener()
  		{:circle, r} when is_number(r) ->
  			IO.puts("Area = #{3.14 * r * r}")
  			area_listener()
  		
  	end
  end
end


pid = spawn(fn -> Geometry.area_listener() end)

send pid, {:rectangle, 2, 3}

send pid, {:circle, 3}

IO.puts self()
