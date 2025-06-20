defmodule NajvaWeb.AuthHTML do
  use NajvaWeb, :html

  def auth(assigns) do
    ~H"""
    <.flash_group flash={@flash} />
    <% # CSS Classes
    body = "flex h-dvh items-center justify-center bg-bg-secondary"

    container =
      "flex w-full flex-col items-center bg-bg-primary p-8 shadow-lg md:flex-row md:justify-evenly lg:justify-center lg:space-x-32"

    branding = "mb-4 text-center text-4xl font-bold text-text-primary md:text-5xl"

    form = "flex w-full max-w-80 flex-col items-center"

    input =
      "my-2 w-full rounded-xl border-none bg-bg-secondary px-3 py-2 text-text-primary placeholder-text-inert focus:ring-2 focus:ring-fg-primary"

    action_div = "flex w-full flex-col items-center"

    button =
      "disabled:text-text-inert mt-4 w-3/4 rounded-xl bg-bg-secondary p-1.5 text-lg font-bold text-text-primary"

    link = "mt-2 text-text-inert underline" %>

    <div class={body}>
      <div class={container}>
        <a href="/" class={branding}>Welcome to Najva</a>
        <.form for={%{}} phx-submit={@current_path} class={form}>
          <input type="email" name="jid" placeholder="XMPP Address" required class={input} />
          <input type="password" name="password" placeholder="Password" required class={input} />
          <div :if={@current_path == "/login"} class={action_div}>
            <button phx-disable-with="Logging in..." class={button}>Login</button>
            <%!-- <.link navigate="/register" class={link}>Create new account.</.link> --%>
          </div>
          <div :if={@current_path == "/register"} class={action_div}>
            <button disabled class={button}>Register</button>
            <.link navigate="/login" class={link}>Log in to existing account.</.link>
          </div>
        </.form>
      </div>
    </div>
    """
  end
end
