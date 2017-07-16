defmodule CliTest do
	use ExUnit.Case
	doctest Weather.CLI
	
	import Weather.CLI, only: [ parse_args: 1 ]
	
	test ":help returned by option parsing with -h and --help options" do
		assert parse_args(["-h", "anything"])     == :help
		assert parse_args(["--help", "anything"]) == :help
	end
	
	test "location touple returned if location given" do
		assert parse_args(["location"]) == { "location" }
	end
	
	test ":help returned by wrong number of arguments" do
		assert parse_args(["location", "anything"]) == :help
	end
end