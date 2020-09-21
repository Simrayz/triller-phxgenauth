defmodule Triller.Repo do
  use Ecto.Repo,
    otp_app: :triller,
    adapter: Ecto.Adapters.Postgres
end
