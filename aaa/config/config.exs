# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :aaa,
  ecto_repos: [Aaa.Repo]

# Configures the endpoint
config :aaa, AaaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uUU2/uTB5KNnS7YOe24eqwq7dgHV4wWtVygCxA8Oq9BEqpp7qkqtGHHcDOK3J/lU",
  render_errors: [view: AaaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Aaa.PubSub,
  live_view: [signing_salt: "lGzWyTFf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
