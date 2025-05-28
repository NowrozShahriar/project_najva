defmodule ProjectNajvaWeb.PageController do
  use ProjectNajvaWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
