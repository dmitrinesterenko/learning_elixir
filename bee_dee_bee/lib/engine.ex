require IEx
defmodule BeeDeeBee do
  import BeeDeeBee


  defmodule Operations do
    @moduledoc ~S"""
      set(values, keys, key, value)  save a value associated with a key
      get(values, key) get that key
    """
    def set(values, keys, key, value) when not( { key, value } == { nil, nil }) do
      values = Map.put(values, key, value)
      keys = Map.put(keys, value, key)
      trace("values #{values[key]} = #{value}")
      trace("keys #{keys[value]}")
      {values,keys}
    end

    def get(_values, key) when key == nil do
       trace("NULL")
    end

#    def get(key) when not( { key,  _ } = @key_dictionary) do
#      "NULL"
#    end

    def get(values, key) do
      IEx.pry
      trace(values[key])
    end

    def unset(values, key) do
      Map.drop(values, [key])
      #TODO need to remove this from the keys dictionary
    end
  end
end
