defmodule NeosWeb.PageController do
  use NeosWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
