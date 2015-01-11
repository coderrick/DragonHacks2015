use Mix.Config

config :example, Example.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
