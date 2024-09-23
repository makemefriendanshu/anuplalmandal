defmodule Anuplalmandal.Repo.Migrations.AddHitTable do
  use Ecto.Migration

  def change do
    create table(:hit) do
      add :ip, :string
      add :agent, :string
      timestamps()
    end
  end
end
