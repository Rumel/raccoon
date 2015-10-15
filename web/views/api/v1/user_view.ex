defmodule Raccoon.Api.V1.UserView do
  use Raccoon.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Raccoon.Api.V1.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Raccoon.Api.V1.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      password_hash: user.password_hash,
      email: user.email}
  end
end
