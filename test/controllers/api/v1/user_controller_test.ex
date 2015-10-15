defmodule Raccoon.Api.V1.UserControllerTest do
  use ExUnit.Case, async: true
  use Plug.Test
  alias Poison.Parser

  defp send_request(conn) do
    %{ resp_body: response } = conn |> Raccoon.Endpoint.call([])

    Parser.parse! response
  end

  test "POST /api/v1/users creates a new user" do

    params = %{
      user: %{
        email: "test@test.com",
        password: "password"
      }
    }

    response = conn(:post, "/api/v1/users", params) |> send_request

    assert response["data"]["email"], "test@test.com"
  end
end
