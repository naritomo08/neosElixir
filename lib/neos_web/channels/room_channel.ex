defmodule NeosWeb.RoomChannel do
  use Phoenix.Channel
  require Logger

  def join(topic, _payload, socket) do
    Logger.info("*** topic = #{topic}")
    {:ok, socket}
  end

  def handle_in("event5", %{"error" => true}, socket) do
    {
      :reply,
      {:error,
        %{reason: "error flag for event5 request is true"}
      },
      socket
    }
  end

  def handle_in("event5", _payload, socket) do
    {:reply, {:ok, %{event: "pong"}}, socket}
  end
end