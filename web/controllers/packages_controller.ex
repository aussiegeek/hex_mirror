defmodule HexMirror.PackagesController do
  use HexMirror.Web, :controller

  def index(conn, _) do
    Hex.Utils.ensure_registry!(fetch: false)
    conn
    |> fetch_query_params
    |> find_packages
    |> render("index.html")
  end

  defp find_packages(%{query_params: %{"q" => query}} = conn) do
    conn
    |> assign(:packages, Hex.Registry.search(query))    
  end

  defp find_packages(conn) do
    conn
    |> assign(:packages, Hex.Registry.all_packages())    
  end
end
