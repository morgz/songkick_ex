defmodule Songkick.Events do
  import Songkick.Helpers
  use Songkick.Responder
  alias Songkick.{Client}

  @doc """
  Search for upcoming events by artist name or location.
  [Songkick Documenation](https://www.songkick.com/developer/event-search)

  **required params**: `artist_name` or `location`

  **Optional params**: `min_date`, `max_date`, `type`, `page`, `per_page`,
  """
  def get_events(params \\ nil) do
    url = get_events_url(params)
    Client.get(url) |> handle_response
  end

  def get_events_url(params) do
    Songkick.base_url() <> "events.json" <> query_string(params)
  end

end