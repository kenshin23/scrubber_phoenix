defmodule ScrubberPhoenix.Record do
  use ScrubberPhoenix.Web, :model

  schema "records" do
    field :row, :integer
    field :key, :string
    field :value, :string

    timestamps

    belongs_to :documents, ScrubberPhoenix.Document
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    cast(model, params, ~w(row key value), ~w())
  end
end
