defmodule ScrubberPhoenix.User do
  use ScrubberPhoenix.Web, :model

  schema "users" do
    field :username, :string
    field :password, :string
    field :is_active, :boolean, default: false

    timestamps

    has_many :documents, Document
  end

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    cast(model, params, ~w(username password is_active), ~w())
  end
end
