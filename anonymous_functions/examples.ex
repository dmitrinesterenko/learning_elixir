trace = fn (object) ->
  #IO.puts object
  IO.inspect object
end

sum = fn (a,b) -> a + b end
divide = fn (a,b) -> a / b end
list_concat = fn (list1, list2) -> list1 ++ list2 end
sum3 = fn (a,b,c) -> a + sum.(b,c) end
IO.puts sum3.(1,2,3)
pair_tuple_to_list = fn (tuple1, tuple2) ->
  Tuple.to_list(tuple1) ++ Tuple.to_list(tuple2)
end
IO.puts pair_tuple_to_list.({1,2,3},{"one","two","three"})
file_open = fn
  {:ok, file} -> "Read data #{IO.read(file, :line)}"
  {_error_code, error} -> "Error #{:file.format_error(error)}"
end
trace.(file_open.(File.open("examples.ex")))
trace.(file_open.(File.open("nonexistent_file.ex")))

buzzed_fizz = fn
  (0,0,_) -> "FizzBuzz"
  (0,_,_) -> "Fizz"
  (_,0,_) -> "Buzz"
  (_,_,c) -> c
end

trace.(buzzed_fizz.(0,0,9))
trace.(buzzed_fizz.(0,1,9))
trace.(buzzed_fizz.(1,0,9))
trace.(buzzed_fizz.(1,2,9))
trace.(buzzed_fizz.(0,0,0))

fizz_buzz = fn (n) ->
  buzzed_fizz.(rem(n,3), rem(n,5), n)
end

trace.(fizz_buzz.(10))
trace.(fizz_buzz.(11))
trace.(fizz_buzz.(12))
trace.(fizz_buzz.(13))
trace.(fizz_buzz.(14))
trace.(fizz_buzz.(15))
trace.(fizz_buzz.(16))

prefixer = fn (prefix) ->
    fn (postfix) ->
        prefix ++ postfix
    end
end

helloer = prefixer.('hello ')
trace.(helloer.('dave'))
trace.(helloer.('champ'))

client = fn (configuration) ->
  fn (command) ->
    "#{configuration["url"]}/#{command}"
  end
end

trace.(client.(%{"url" => "https://trader.info"}).("list"))

# A being makes twice as much honey
being  = fn (honey) ->
  honey * 2
end

# A good day is to apply your ability to the inputs
day = fn (ability,value) ->
  ability.(value)
end

trace.(day.(being,2))

# Apply an ability to a group of bees
# FIXME this does not work because honeycomb is not defined inside the function
# itself. The ability to recurse with anonymous functions is according to github
# searches is still an uncertain feature in Elixir
# FIXME this currently only applies to the first element of a list. The first
# bee gets to make the honey
honeycomb = fn
  (ability,[]) -> ability.(nil)
  (ability,[first_bee|other_bees]) -> ability.(first_bee)
  #FIXME can't recurse here to call the function with the rest of the
  # bees # ++ honeycomb.(ability,other_bees)
end
bees = [1,2,3,4,5]
trace.(honeycomb.(being,bees))

tony_two_time = &("#{&1}, #{&1}")
trace.(tony_two_time.("Gotta get the papers"))

# This way you can create your own aliases for existing functions
# by making anonymous functions that reference the already existing functions
my_minimum_function_takes_longer_to_spell = &Kernel.min/2
my_minimum_function_takes_longer_to_spell.(99,-99)

trace.(Enum.map bees, &(&1 + 2))
trace.(Enum.each bees, &(IO.inspect &1))
