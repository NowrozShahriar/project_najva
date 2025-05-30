defmodule ProjectNajvaWeb.LoginHTML do
  use ProjectNajvaWeb, :html

  def login(assigns) do
    ~H"""
    <!-- Login Page -->
    <div class="flex min-h-screen items-center justify-center bg-bg-secondary">
      <div class="w-full max-w-md rounded-lg bg-bg-primary p-8 shadow-lg">
        <h2 class="mb-6 text-center text-2xl font-bold text-text-secondary">Login</h2>
        <.form :let={_f} for={%{}} action={~p"/login"} class="space-y-4">
          <div>
            <label for="username" class="block text-sm font-medium text-text-secondary">
              Username
            </label>
            <input
              type="text"
              name="user[username]"
              id="username"
              class="mt-1 w-full rounded-xl border-none bg-bg-secondary p-2 text-text-primary focus:ring-2 focus:ring-fg-primary"
              required
            />
          </div>
          <div>
            <label for="password" class="block text-sm font-medium text-text-secondary">
              Password
            </label>
            <input
              type="password"
              name="user[password]"
              id="password"
              class="mt-1 w-full rounded-xl border-none bg-bg-secondary p-2 text-text-primary focus:ring-2 focus:ring-fg-primary"
              required
            />
          </div>
          <button
            type="submit"
            class="w-full rounded-xl bg-fg-primary p-2 font-semibold text-text-primary hover:bg-black"
          >
            Login
          </button>
        </.form>
      </div>
    </div>
    """
  end
end
