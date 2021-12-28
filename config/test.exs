import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_tailwind_demo_web, TailwindDemoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "/SDPeF3qbJ304Hjl0dVuSDvo0h/PsW9kP1cq0pllHo4mUnAXt6+eknylGJh4rycY",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :phx_tailwind_demo, TailwindDemo.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
