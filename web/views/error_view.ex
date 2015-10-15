defmodule Raccoon.ErrorView do
  use Raccoon.Web, :view

  def render("error.json", %{changeset: changeset}) do
    # When encoded, the changeset returns its errors
    # as a JSON object. So we just pass it forward.
    %{errors: changeset}
  end

  def render("500.json", _assigns) do
    # When encoded, the changeset returns its errors
    # as a JSON object. So we just pass it forward.
    #%{errors: changeset}
    %{error: "500"}
  end

  def render("404.json", _assigns) do
    # When encoded, the changeset returns its errors
    # as a JSON object. So we just pass it forward.
    #%{errors: changeset}
    %{error: "404"}
  end
end
