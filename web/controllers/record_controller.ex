defmodule ScrubberPhoenix.RecordController do
  use ScrubberPhoenix.Web, :controller

  alias ScrubberPhoenix.Record

  plug :scrub_params, "record" when action in [:create, :update]
  plug :action

  def index(conn, _params) do
    records = Repo.all(Record)
    render conn, "index.html", records: records
  end

  def new(conn, _params) do
    changeset = Record.changeset(%Record{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"record" => record_params}) do
    changeset = Record.changeset(%Record{}, record_params)
    # FIXME User and document are hardcoded. This is obviously bad.
    user = 1
    document = 1

    if changeset.valid? do
      Repo.insert(changeset)

      conn
      |> put_flash(:info, "Record created succesfully.")
      |> redirect(to: user_document_record_path(conn, :index, user, document))
    else
      render conn, "new.html", changeset: changeset
    end
  end

  def show(conn, %{"id" => id}) do
    record = Repo.get(Record, id)
    render conn, "show.html", record: record
  end

  def edit(conn, %{"id" => id}) do
    record = Repo.get(Record, id)
    changeset = Record.changeset(record)
    render conn, "edit.html", record: record, changeset: changeset
  end

  def update(conn, %{"id" => id, "record" => record_params}) do
    record = Repo.get(Record, id)
    document = record.document_id
    # FIXME Again, hardcoded.
    user = 1
    changeset = Record.changeset(record, record_params)

    if changeset.valid? do
      Repo.update(changeset)

      conn
      |> put_flash(:info, "Record updated succesfully.")
      |> redirect(to: user_document_record_path(conn, :index, user, document))
    else
      render conn, "edit.html", record: record, changeset: changeset
    end
  end

  def delete(conn, %{"id" => id}) do
    record = Repo.get(Record, id)
    document = record.document_id
    # FIXME Again, hardcoded.
    user = 1
    Repo.delete(record)

    conn
    |> put_flash(:info, "Record deleted succesfully.")
    |> redirect(to: user_document_record_path(conn, :index, user, document))
  end
end
