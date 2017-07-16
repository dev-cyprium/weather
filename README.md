# Weather

This is a solution to the following exercise:

In the United States, the National Oceanic and Atmospheric Administration
provides hourly XML feeds of conditions at 1,800 locations. 7 For example,
the feed for a small airport close to where I’m writing this is at
http://w1.weather.gov/xml/current_obs/KDTO.xml .
Write an application that fetches this data, parses it, and displays it in a
nice format.
(Hint: You might not have to download a library to handle XML parsing.)

Implemented in `Elixir` and build tool `mix`, with fully tested test suit.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `weather` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:weather, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/weather](https://hexdocs.pm/weather).

