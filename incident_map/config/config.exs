# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :incident_map,
  ecto_repos: [IncidentMap.Repo]

# Configures the endpoint
config :incident_map, IncidentMapWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HauQIs8wdyQwSfnM9IxLX26Eyo5rX/0yyt3S8BsY2kJcStG3Nxb4a6dgWJoPx2MK",
  render_errors: [view: IncidentMapWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: IncidentMap.PubSub,
  live_view: [signing_salt: "4Bba1m3U"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
