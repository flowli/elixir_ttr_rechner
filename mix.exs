defmodule TtrRechner.MixProject do
  use Mix.Project

  def project do
    [
      app: :ttr_rechner,
      version: "0.0.1",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp description do
    """
    Berechnet Tischtennis-Ranking-Punkte.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Florian Arndt"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/flowli/elixir_ttr_rechner"
      }
    ]
  end
end
