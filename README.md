# SongkickEx

This is a work in progress. An Elixir Wrapper around the Songkick API. Feel free PR to cover more endpoints.

Structurally it's based on [spotify_ex](https://github.com/jsncmgs1/spotify_ex)

## Installation

I haven't published this to hex.pm yet. For now you can add it as a dependency via git:

```elixir
  defp deps do
    [
      ...
      {:songkick_ex, git: "https://github.com/morgz/songkick_ex.git", tag: "0.1.1"}
    ]
  end
```

Also you need to create a file to hold your Songkick API key:
config/config.secret.exs

```elixir
  use Mix.Config
  config :songkick_ex, songkick_api_key: "INSERT_KEY_HERE"
```

Then in your config/config.exs add the import_config line.

```elixir
use Mix.Config
...

import_config "config.secret.exs"
```

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `songkick_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:songkick_ex, "~> 0.1.0"}
  ]
end
```

### Usage

EG.

Get all concerts in London between dates
```
Songkick.Events.get_events(%{location: "sk:24426", min_date: "2018-03-21", max_date: "2018-03-22", type: "Concert"})
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/songkick_ex](https://hexdocs.pm/songkick_ex).

