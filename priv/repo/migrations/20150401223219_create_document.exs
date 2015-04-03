defmodule ScrubberPhoenix.Repo.Migrations.CreateDocument do
  use Ecto.Migration

  def change do
    create table(:documents) do
      add :name, :string
      add :uploaded_as, :string

      timestamps
    end
  end
end
