defmodule Anuplalmandal.Repo do
  use Ecto.Repo,
    otp_app: :anuplalmandal,
    adapter: Ecto.Adapters.Postgres
end
