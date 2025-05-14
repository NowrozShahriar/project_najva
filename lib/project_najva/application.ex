defmodule ProjectNajva.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ProjectNajvaWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:project_najva, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ProjectNajva.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: ProjectNajva.Finch},
      # Start a worker by calling: ProjectNajva.Worker.start_link(arg)
      # {ProjectNajva.Worker, arg},
      # Start to serve requests, typically the last entry
      ProjectNajvaWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ProjectNajva.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ProjectNajvaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
