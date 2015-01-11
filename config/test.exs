use Mix.Config

config :dragon_hacks2015, DragonHacks2015.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
