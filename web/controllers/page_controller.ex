defmodule Raccoon.PageController do
  use Raccoon.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
