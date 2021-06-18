defmodule IncidentMap.Repo do
  use Ecto.Repo,
    otp_app: :incident_map,
    adapter: Ecto.Adapters.Postgres
end
