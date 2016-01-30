defmodule Summer do 

	def donna_summer([head | tail], acc) do
		donna_summer(tail, acc + head)
	end

	def donna_summer([], acc) do 
		acc
	end

	def donna_multiply(x, y) do
		donna_multiply(x - 1, y + y)
	end

	def donna_multiple(0, y) do
		y
	end
end

Summer.donna_multiply(20,30)
Summer.donna_summer([1,2,3,4,5,6,7,8,9], 2)
