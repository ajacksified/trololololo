json.array!(@trolls) do |troll|
  json.extract! troll, :name, :bio
  json.url troll_url(troll, format: :json)
end