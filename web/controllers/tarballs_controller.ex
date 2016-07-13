defmodule HexMirror.TarballsController do
  use HexMirror.Web, :controller

  def show(conn, %{"tarball" => tarball}) do
    Plug.Conn.send_file(conn, 200, "#{HexMirror.Mirror.tarball_path}/#{tarball}")
  end
end
