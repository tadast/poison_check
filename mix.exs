defmodule PoisonCheck.Mixfile do
  use Mix.Project

  def project do
    [ app: :poison_check,
      version: "0.0.1",
      elixir: "~> 0.12.3",
      deps: deps,
      escript_main_module: :poison_check ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [{ :httpotion, "~> 0.2.3", [ github: "myfreeweb/httpotion" ] }]
  end
end
