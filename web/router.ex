defmodule Raccoon.Router do
  use Raccoon.Web, :router

  #pipeline :browser do
    #plug :accepts, ["html"]
    #plug :fetch_session
    #plug :fetch_flash
    #plug :protect_from_forgery
    #plug :put_secure_browser_headers
  #end

  pipeline :api do
    plug :accepts, ["json"]
  end

   # Other scopes may use custom stacks.
   scope "/api", Raccoon.Api do
     pipe_through :api

     scope "/v1", V1 do

      resources "users", UserController, except: [:index, :update]
     end
   end
end
