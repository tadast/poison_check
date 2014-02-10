defmodule Service.GitHub do
  use HTTPotion.Base
  @url "https://status.github.com/api/status.json"

  def process_url(_) do
    @url
  end

  def process_request_headers(headers) do
    Dict.put headers, "User-Agent", "poison_check"
  end

  def process_response_body(body) do
    json = :jsx.decode to_string(body)
    json2 = Enum.map json, fn ({k, v}) -> { binary_to_atom(k), v } end
    :orddict.from_list json2
  end
end
