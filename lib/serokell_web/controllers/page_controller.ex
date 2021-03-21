defmodule SerokellWeb.PageController do
  use SerokellWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
