defmodule ProjectNajvaWeb.AuthLive.Login do
  use ProjectNajvaWeb, :live_view

  def mount(params, session, socket) do
    dbg()
    {:ok, socket, layout: false}
  end

  @spec render(any()) :: Phoenix.LiveView.Rendered.t()
  def render(assigns) do
    ~H"""
    <div>
      <.link navigate="/">Login</.link>
      <.link navigate="/register">Check the console for debug information.</.link>
    </div>
    """
  end
end
