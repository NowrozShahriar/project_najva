defmodule ProjectNajvaWeb.AppLive.Root do
  use ProjectNajvaWeb, :live_view

  def mount(params, session, socket) do
    dbg()
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="chat-root text-white m-1" />
    """
  end
end
