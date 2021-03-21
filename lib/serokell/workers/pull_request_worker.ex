defmodule Serokell.PullRequestWorker do
  use GenServer
  require Logger

  def start_link(_) do

    Logger.info("starting #{ inspect(__MODULE__)}")
    GenServer.start_link(__MODULE__, :init, [] )

  end

  def init(_) do

    Logger.info("Initializing #{ inspect(__MODULE__)}")

    {:ok, [] }

  end

  def handle_cast(_request, state) do

    {:noreply, state}

  end

  def handle_call(_request, _, state) do

    {:reply, [], state}

  end

  def handle_info(request, state) do
    {:noreply, state}
  end


end
