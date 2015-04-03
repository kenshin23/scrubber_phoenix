defmodule ScrubberPhoenix.Document do
  use ScrubberPhoenix.Web, :model

  schema "documents" do
    field :name, :string
    field :uploaded_as, :string

    timestamps

    belongs_to :users, ScrubberPhoenix.User
    has_many   :records, ScrubberPhoenix.Record, foreign_key: :document_id
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    cast(model, params, ~w(name uploaded_as), ~w())
  end
end
