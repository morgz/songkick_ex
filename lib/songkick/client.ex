defmodule Songkick.Client do
  def get(url) do
    "#{url}&apikey=#{Songkick.api_key()}"
    |> IO.inspect
    |> HTTPoison.get
  end
end