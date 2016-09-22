Jbuilder.encode do

  json.id @game.id
  json.name @game.name
  json.add_ons do
    json.array!(@game.add_ons) do |add_on|
      json.id add_on.id
      json.title add_on.title
    end
  end
  
end
