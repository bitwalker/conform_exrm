defmodule ConformExrm.Mixfile do
  use Mix.Project

  def project do
    [app: :conform_exrm,
     version: "1.0.0",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     description: "Conform plugin for ExRM",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: []]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:exrm, "> 0.0.0"},
     {:conform, "> 0.0.0"}]
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
     maintainers: ["Paul Schoenfelder"],
     licenses: ["MIT"],
     links: %{"GitHub": "https://github.com/bitwalker/conform_exrm"}]
  end
end
