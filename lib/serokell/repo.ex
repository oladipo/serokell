defmodule Serokell.Repo do
  use Ecto.Repo,
    otp_app: :serokell,
    adapter: Ecto.Adapters.Postgres
end
