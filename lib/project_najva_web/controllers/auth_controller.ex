defmodule ProjectNajvaWeb.AuthController do
  use ProjectNajvaWeb, :controller

  def set_token(conn, %{"auth_token_received from xmpp" => token}) do
    dbg(conn)

    conn
    |> put_resp_cookie("user1", token,
      max_age: 60 * 60 * 24 * 180,
      http_only: true,
      secure: Application.get_env(:ProjectNajva, :env) == :prod,
      same_site: "Lax"
    )
    |> json(%{success: true})
  end

  def clear_token(conn, _params) do
    conn
    |> delete_resp_cookie("user1")
    |> json(%{success: true})
  end
end
