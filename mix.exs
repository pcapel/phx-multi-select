defmodule MultiSelect.MixProject do
  use Mix.Project

  def project do
    [
      app: :multi_select,
      version: "0.1.0",
      elixir: "~> 1.14",
      elixirc_paths: elixirc_paths(Mix.env()),
      #start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {MultiSelectExample.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  defp deps do
    [
      {:phoenix,             "~> 1.7.0-rc.2", override: true},
      {:phoenix_html,        "~> 3.0"},
      {:phoenix_live_view,   "~> 0.18.3"},
      {:esbuild,             "~> 0.5",    runtime: Mix.env() == :dev},
      {:tailwind,            "~> 0.1.8",  runtime: Mix.env() == :dev},
      {:gettext,             "~> 0.20"},
    ]
  end
end
