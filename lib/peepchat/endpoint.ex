defmodule Peepchat.Endpoint do
  use Phoenix.Endpoint, otp_app: :peepchat

  socket "/socket", Peepchat.UserSocket

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.MethodOverride
  plug Plug.Head

  plug CORSPlug

  plug Peepchat.Router
end
