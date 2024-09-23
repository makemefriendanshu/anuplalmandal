defmodule Anuplalmandal.Hit do
  use Ecto.Schema
  import Ecto.Changeset

  schema "hit" do
    field :ip, :string
    field :agent, :string
    timestamps()
  end

  def changeset(struct, params) do
    struct
    |> cast(params, [:ip, :agent])
  end
end
