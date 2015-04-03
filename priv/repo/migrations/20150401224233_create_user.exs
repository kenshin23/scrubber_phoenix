defmodule ScrubberPhoenix.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string
      add :password, :string
      add :is_active, :boolean, default: false

      timestamps
    end
  end
end
