defmodule ScrubberPhoenix.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ScrubberPhoenix do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/users", UserController do
      resources "/documents", DocumentController do
        resources "/records", RecordController
      end
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", ScrubberPhoenix do
  #   pipe_through :api
  # end
end
