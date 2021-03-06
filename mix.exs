defmodule Supervisorring.Mixfile do
  use Mix.Project

  def project do
    [ app: :supervisorring,
      version: "0.0.5",
      elixir: "~> 1.3",
      deps: [{:nano_ring,"0.0.4",git: "https://github.com/kbrw/nano_ring", branch: "master_1.3"}]]
  end

  def application do
    [ mod: { Supervisorring.App,[] },
      applications: [:nano_ring,:iex],
      env: [ data_dir: "./data" ] ]
  end
end
