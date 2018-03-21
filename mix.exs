defmodule SongkickEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :songkick_ex,
      version: "0.1.1",
      elixir: "~> 1.6",
      description: description(),
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: [extras: ["README.md"]]
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
      {:httpoison, "~> 1.0.0"},
      {:poison, "~> 3.1"},
      {:ex_doc, "~> 0.18.3", only: :dev}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp package do
    [
      maintainers: ["Daniel Morgan"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://www.github.com/morgz/songkick_ex"
      }
    ]
  end

  defp description do
    """
    An Elixir wrapper for the Songkick Web API.
    """
  end
end
