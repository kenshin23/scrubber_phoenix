defmodule ScrubberPhoenix.Repo.Migrations.AddModelRelationships do
  use Ecto.Migration

  def change do
  	alter table(:documents) do
  		add :user_id, references(:users)
  	end

  	alter table(:records) do
  		add :document_id, references(:documents)
  	end
  end
end
