# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :proj1,
  ecto_repos: [Proj1.Repo]

# Configures the endpoint
config :proj1, Proj1Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ylSOGtWssz0A6w1/AYD9QhI3XourED7GoXuAXsarRku5Gl/aeOjJ4CppFk/PAU27",
  render_errors: [view: Proj1Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Proj1.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
