defmodule ProjectNajvaWeb.Components do
  use Phoenix.Component
  
# This component is used to hide the list pane on small screens.
# It can be included in any LiveView or HTML template where you want to control the visibility of the list pane.
  def listpane_visibility(assigns) do
    ~H"""
      <style>
        @media (max-width: 640px){
          .listpane {
            display: none;
          }
        }
      </style>
    """
  end
end
