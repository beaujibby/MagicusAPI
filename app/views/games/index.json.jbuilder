Jbuilder.encode do

  json.array!(@games) do |game|
    json.id game.id
    json.name game.name
    json.add_ons game.add_ons.count
  end

end
