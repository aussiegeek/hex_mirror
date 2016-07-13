defmodule HexMirror.Router do
  use HexMirror.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", HexMirror do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/packages", PackagesController, :index
  end

  scope "/", HexMirror do
    get "/registry.ets.gz", RegistryController, :show
    get "/tarballs/:tarball", TarballsController, :show
  end
end
