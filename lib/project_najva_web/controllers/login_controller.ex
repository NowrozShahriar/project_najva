defmodule ProjectNajvaWeb.LoginController do
  use ProjectNajvaWeb, :controller


  def login(conn, _params) do
  dbg(conn)
    render(conn, :login, layout: false)
  end

#   def create(conn, %{"user" => user_params}) do
#     # Dummy authentication logic for demonstration
#     if user_params["username"] == "admin" and user_params["password"] == "secret" do
#       conn
#       |> put_flash(:info, "Login successful!")
#       |> redirect(to: "/")
#     else
#       conn
#       |> put_flash(:error, "Invalid username or password")
#       |> render(:new)
#     end
#   end
end
