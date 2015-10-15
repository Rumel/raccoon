defmodule Raccoon.User do
  use Raccoon.Web, :model

  schema "users" do
    field :password_hash, :string
    field :email, :string

    timestamps
  end

  @required_fields ~w(password_hash email)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
