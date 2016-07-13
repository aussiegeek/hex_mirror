defmodule HexMirror.RegistryController do
  use HexMirror.Web, :controller

  def show(conn, _) do
    Plug.Conn.send_file(conn, 200, "#{Hex.Registry.ETS.path}.gz")
  end
end

