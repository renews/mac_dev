defmodule MacDev.MixProject do
  use Mix.Project

  def project do
    [
      app: :mac_dev,
      version: "1.0.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :download, :loki]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:loki, "~> 1.2.2"},
      {:download, "~> 0.0.4"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
