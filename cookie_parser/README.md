# CookieParser

Parse collected cookies from a JSON file to organize them by size and count
frequency.
## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
as:

  1. Add cookie_parser to your list of dependencies in `mix.exs`:

        def deps do
          [{:cookie_parser, "~> 0.0.1"}]
        end

  2. Ensure cookie_parser is started before your application:

        def application do
          [applications: [:cookie_parser]]
        end

## Development
```sh
# install dependencies
mix deps

# compile the project
mix compile

# run interactive elixir with the mix command
# https://github.com/elixir-lang/elixir/blob/77f2558cf59dac25371dd5d3aff7ab7604ca4ac1/bin/elixir#L8
iex -S mix
```

