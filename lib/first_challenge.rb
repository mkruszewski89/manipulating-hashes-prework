def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts.each do |contact, data|
    if contact == "Freddy Mercury"
      data.each do |category, items|
        if category == :favorite_icecream_flavors
          items.each do |flavor|
            items.delete(flavor) if flavor == "strawberry"
          end
        end
      end
    end
  end
  contacts
end
