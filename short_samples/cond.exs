putter = fn(x) ->
   IO.puts "x is #{x}"
end

x = 1
# Only the first (non nil or false) match executes
cond do 
   0 == 0 -> 
     x = 0 
   2 > 0 ->
     x = 2
   x == 1 ->
     x = 3
end

putter.(x)

x = 2
try do
   cond do
    x == 1 -> 
       x = 3
    x < -1 ->
       x = 4
   true -> 
      IO.puts "well this is unfortunate, nothing matched and I have to do this always matcher"
   end
catch 
  message -> 
	IO.puts ("Got #{message} excepted hard") 
	putter.(x)
 
after 
  IO.puts("Afterward go for a walk")
end

putter.(x)

cond do 
  x == 1 -> 
    x = -3 
  x < -1 ->
    x = 2
  true -> #always matched on this 
    a = 5 	
end 

putter.(a)
putter.(x)

cond do 
   is_number(x) ->
     x = -5
end

putter.(x)
