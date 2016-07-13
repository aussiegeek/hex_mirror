defmodule HexMirror.PageController do
  use HexMirror.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
