defmodule HexMirror.PackagesView do
  use HexMirror.Web, :view

  def package_versions(package) do
    package
    |> Hex.Registry.get_versions
    |> Enum.reverse
    |> Enum.slice(0, 5)
  end
end
