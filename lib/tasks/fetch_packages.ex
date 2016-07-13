defmodule Mix.Tasks.FetchPackages do
  use Mix.Task

  @shortdoc "Fetch packages"
  @moduledoc """
Mix task to fetch packages once and then exit
"""
  
  def run(_) do
    HTTPoison.start
    Hex.start
    
    HexMirror.Mirror.fetch
  end
end
