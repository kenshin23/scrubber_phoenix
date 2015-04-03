defmodule ScrubberPhoenix.Repo.Migrations.CreateRecord do
  use Ecto.Migration

  def change do
    create table(:records) do
      add :row, :integer
      add :key, :string
      add :value, :string

      timestamps
    end
  end
end
