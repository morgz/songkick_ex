defmodule Songkick.Client do
  def get(url) do
    "#{url}&apikey=#{Songkick.api_key()}"
    |> HTTPoison.get
  end
end