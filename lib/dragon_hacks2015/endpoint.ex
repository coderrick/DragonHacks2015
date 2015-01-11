defmodule DragonHacks2015.Endpoint do
  use Phoenix.Endpoint, otp_app: :dragon_hacks2015

  plug Plug.Static,
    at: "/", from: :dragon_hacks2015

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_dragon_hacks2015_key",
    signing_salt: "SqvQSDyU",
    encryption_salt: "ixdryiHn"

  plug :router, DragonHacks2015.Router
end
