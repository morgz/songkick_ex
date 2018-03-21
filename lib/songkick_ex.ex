defmodule Songkick do
  @moduledoc false
  def api_key, do: Application.get_env(:songkick_ex, :songkick_api_key)
  def base_url, do: "http://api.songkick.com/api/3.0/"
end