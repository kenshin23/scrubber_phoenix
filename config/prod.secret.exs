use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :scrubber_phoenix, ScrubberPhoenix.Endpoint,
  secret_key_base: "sq/lWffEHCoMMBaBxmiZKd/VoQayQACJFwnGe496p9t9JyzpjFTs2EsVjIBJdvgX"

# Configure your database
config :scrubber_phoenix, ScrubberPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "scrubber_phoenix_prod"
