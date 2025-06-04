defmodule ProjectNajvaWeb.AuthController do
  use ProjectNajvaWeb, :controller

  def login(conn, %{"auth_token_received from xmpp" => token}) do
    dbg(conn)

    conn
    |> put_resp_cookie("jid1", token,
      max_age: 60 * 60 * 24 * 180,
      http_only: true,
      secure: Application.get_env(:ProjectNajva, :env) == :prod,
      same_site: "Lax"
    )
  end

  def logout(conn, _params) do
    conn
    |> delete_resp_cookie("jid1")
  end
end
