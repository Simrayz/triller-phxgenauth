# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :triller,
  ecto_repos: [Triller.Repo]

# Configures the endpoint
config :triller, TrillerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FjNJPdL3ACnFZuVEtA6YUJ0tuvC/mTl+hHatBJ09rUeO8d+8iznYECF/j0CsU0hZ",
  render_errors: [view: TrillerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Triller.PubSub,
  live_view: [signing_salt: "elrxOypO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
