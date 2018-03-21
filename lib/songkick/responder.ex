defmodule Responder do
  @moduledoc """
  Recieves http responses from the client and handles them accordingly.
  """
  defmacro __using__(_opts) do
    quote do
      import Responder
    end
  end

  def handle_response({:ok, %HTTPoison.Response{status_code: code, body: ""}})
          when code in 200..299,
          do: :ok

  def handle_response({message, %HTTPoison.Response{status_code: code, body: body}})
      when code in 400..499 do
    {message, Poison.decode!(body)}
  end

  def handle_response({:ok, %HTTPoison.Response{status_code: _code, body: body}}) do
    response = body |> Poison.decode!()
    {:ok, response}
  end
end