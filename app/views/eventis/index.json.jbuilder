json.array!(@eventis) do |eventi|
  json.extract! eventi, :naslov, :opis, :kraj, :zacetek
  json.url eventi_url(eventi, format: :json)
end
