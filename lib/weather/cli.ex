defmodule Weather.CLI do
	
	@moduledoc """
	Handle the command line parsing and the dispatch
	to the various functions that end up generating
	weather data for a location
	"""
	def main(argv) do
		parse_args(argv)
	end
	
	@doc """
	`argv` can be -h or --help, which returns :help
	
	Otherwise it is a location parameter that will be used to fetch data
	
	Returns a touple of `{ location }`, or `:help` if help was given.
	"""
	def parse_args(argv) do
		parse = OptionParser.parse(
			argv,
			switches: [ help: :boolean ],
			aliases:  [ h: :help]	
		)
		
		case parse do
			{ [ help: true ], _, _ } -> :help
			{ _, [ location ], _ }   -> { location }
			_ -> :help
		end
	end
end