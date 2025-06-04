defmodule ProjectNajvaWeb.AppLive.Root do
  use ProjectNajvaWeb, :live_view

  def mount(params, session, socket) do
    dbg()
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="chat-root text-white">
      <h1>Root</h1>
      <p>Check the console for debug information.</p>
    </div>
    <ProjectNajvaWeb.Components.visibility hide_class="chat-root" />
    """
  end
end
