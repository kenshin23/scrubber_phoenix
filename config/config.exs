# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :scrubber_phoenix, ScrubberPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nRCzX0/uL8/7N+NQsdnltrP6VXj++OOP3YjeIrLnDpDGSYNcsQFI16PTGcBOgRCx",
  debug_errors: false,
  pubsub: [name: ScrubberPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]
x
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
