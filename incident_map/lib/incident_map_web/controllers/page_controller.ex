defmodule IncidentMapWeb.PageController do
  use IncidentMapWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
