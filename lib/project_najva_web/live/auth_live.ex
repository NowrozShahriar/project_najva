defmodule ProjectNajvaWeb.AuthLive do
  use ProjectNajvaWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket, layout: false}
  end

  def render(assigns) do
    ~H"""
    <% # CSS Classes
    body = "flex h-dvh items-center justify-center bg-bg-secondary"

    container =
      "flex w-full flex-col items-center bg-bg-primary p-8 shadow-lg md:flex-row md:justify-evenly lg:justify-center lg:space-x-24"

    branding = "mb-4 text-center text-4xl font-bold text-text-primary md:mb-10 md:text-5xl"

    form = "flex w-full max-w-80 flex-col items-center"

    input =
      "my-2 w-full rounded-xl border-none bg-bg-secondary px-3 py-2 text-text-primary placeholder-text-inert focus:ring-2 focus:ring-fg-primary"

    action_div = "flex w-full flex-col items-center"

    button = "mt-4 w-3/4 rounded-xl bg-bg-secondary p-1.5 text-lg font-bold text-text-primary"

    link = "mt-2 text-text-inert underline" %>

    <.flash_group flash={@flash} />
    <div class={body}>
      <div class={container}>
        <.link navigate="/" class={branding}>Project Najva</.link>
        <.form for={%{}} phx-submit={@live_action} class={form}>
          <input type="email" name="jid" placeholder="XMPP Address" required class={input} />
          <input type="password" name="password" placeholder="Password" required class={input} />
          <div :if={@live_action == :login} class={action_div}>
            <button class={button}>Login</button>
            <.link navigate="/register" class={link}>Create new account.</.link>
          </div>
          <div :if={@live_action == :register} class={action_div}>
            <button class={button}>Register</button>
            <.link navigate="/login" class={link}>Log in to existing account.</.link>
          </div>
        </.form>
      </div>
    </div>
    """
  end
end
