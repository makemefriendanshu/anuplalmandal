defmodule AnuplalmandalWeb.PageController do
  alias Anuplalmandal.Hit
  # import Ecto.Query
  alias Anuplalmandal.Repo
  use AnuplalmandalWeb, :controller

  def home(conn, _params) do
    Hit.changeset(
      %Hit{},
      %{
        ip: conn.remote_ip |> Tuple.to_list() |> Enum.map(& (&1 |> to_string()) <> ".")  |> List.to_string() |> String.trim_trailing("."),
        agent: conn |> Plug.Conn.get_req_header("user-agent") |> to_string()
      }
    )
    |> Repo.insert()

    count =
      Repo.all(Hit)
      |> IO.inspect(label: "user")
      |> length()

    conn
    |> assign(:count, count)
    |> render(:home, layout: false)
  end
end
