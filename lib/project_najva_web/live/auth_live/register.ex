defmodule ProjectNajvaWeb.AuthLive.Register do
  use ProjectNajvaWeb, :live_view

  def mount(params, session, socket) do
    dbg()
    {:ok, socket, layout: false}
  end

  def render(assigns) do
    ~H"""
    <div>
      <.link navigate="/">Register</.link>
      <.link navigate="/login">Check the console for debug information.</.link>
    </div>
    """
  end
end
