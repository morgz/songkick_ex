defmodule Helpers do
  @moduledoc false
  def query_string(nil), do: ""
  def query_string([]), do: ""
  def query_string(params), do: "?" <> URI.encode_query(params)
end