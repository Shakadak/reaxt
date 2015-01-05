defmodule Reaxt.Mixfile do
  use Mix.Project

  def project do
    [app: :reaxt,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  def application do
    [applications: [:logger, :poolboy, :exos],
     mod: {Reaxt.App,[]},
     env: [otp_app: :reaxt]]
  end

  defp deps do
    [{:exos, "1.0.0"},
     {:poolboy, []},
     {:cowboy,"~> 1.0.0"},
     {:plug,"~> 0.9.0"},
     {:poison,"1.3.0"}]
  end
end
