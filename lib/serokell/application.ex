defmodule Serokell.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      # Serokell.Repo,

      # Start the Telemetry supervisor
      SerokellWeb.Telemetry,

      # Start the PubSub system
      {Phoenix.PubSub, name: Serokell.PubSub},

      # Start the Endpoint (http/https)
      SerokellWeb.Endpoint,

      # Start a worker by calling: Serokell.Worker.start_link(arg)
      Serokell.PullRequestWorker

      # {Serokell.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Serokell.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    SerokellWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
