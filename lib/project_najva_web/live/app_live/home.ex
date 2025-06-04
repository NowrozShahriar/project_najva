defmodule ProjectNajvaWeb.AppLive.Home do
  use ProjectNajvaWeb, :live_view

  def mount(params, session, socket) do
    dbg()
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <div class="">
        <h1>Home</h1>
        <p>Check the console for debug information.</p>
      </div>
      <ProjectNajvaWeb.Components.listpane_visibility />
    """
  end
end
