defmodule Songkick.Location do
  import Songkick.Helpers
  use Songkick.Responder
  alias Songkick.{Client}

  @doc """
  Get a list of featured playlists.
  [Songkick Documenation](https://www.songkick.com/developer/location-search)

  **required params**: `query` or `location`

  **Valid params**: `page`, `per_page`
  """
  def get_locations(params \\ nil) do
    url = get_locations_url(params)
    Client.get(url) |> handle_response
  end

  def get_locations_url(params) do
    Songkick.base_url() <> "search/locations.json" <> query_string(params)
  end

end