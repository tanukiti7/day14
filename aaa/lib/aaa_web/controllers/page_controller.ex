defmodule AaaWeb.PageController do
  use AaaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
