defmodule NajvaWeb.AuthController do
  use NajvaWeb, :controller

  def auth(conn, _params) do
    render(conn, :auth, layout: false, current_path: conn.request_path)
  end

  #   def login(conn, %{"jid" => jid, "password" => _password}) do
  #
  #       conn
  #       |> put_resp_cookie("jid1", jid,
  #         max_age: 60 * 60 * 24 * 180,
  #         http_only: true,
  #         secure: Application.get_env(:Najva, :env) == :prod,
  #         same_site: "Lax"
  #       )
  #       |> json(%{status: "success", message: "Logged in successfully"})
  #   end

  #   def login(conn, %{"auth_token_received from xmpp" => token}) do
  #     dbg(conn)
  #
  #     conn
  #     |> put_resp_cookie("jid1", token,
  #       max_age: 60 * 60 * 24 * 180,
  #       http_only: true,
  #       secure: Application.get_env(:Najva, :env) == :prod,
  #       same_site: "Lax"
  #     )
  #   end

  # def logout(conn, _params) do
  #   conn
  #   |> delete_resp_cookie("jid1")
  # end
end
