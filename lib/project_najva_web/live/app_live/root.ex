defmodule ProjectNajvaWeb.AppLive.Root do
  use ProjectNajvaWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="chat-root text-white m-1" />
    """
  end
end
