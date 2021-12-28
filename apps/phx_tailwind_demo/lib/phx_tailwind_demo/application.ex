defmodule TailwindDemo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the PubSub system
      {Phoenix.PubSub, name: TailwindDemo.PubSub}
      # Start a worker by calling: TailwindDemo.Worker.start_link(arg)
      # {TailwindDemo.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: TailwindDemo.Supervisor)
  end
end
