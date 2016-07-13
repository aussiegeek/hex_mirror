defmodule HexMirror.MirrorWorker do
  use GenServer

  @moduledoc """
GenServer that periodically downloads the latest registry and packages
"""
  
  def start_link do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init(state) do
    schedule_work()
    {:ok, state}
  end
  
  def handle_info(:download, state) do
    HexMirror.Mirror.fetch
    schedule_work()
    {:noreply, state}
  end

  def schedule_work do
    Process.send_after(self(), :download, 1000 * 60)
  end
end
