dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

#Display all of the city names in a hash
def get_city_names(somehash)
  somehash.each {|k,v| puts k}
end

#Look up area code based on the city name
def get_area_code(somehash, key)
  if somehash.key?(key)
      somehash[key]
  else
    "Not in database. Sorry!"
  end
end

loop do
  puts "Do you want to look up an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city's area code do you want?"
  get_city_names(dial_book)
  city_name = gets.chomp.downcase
  puts get_area_code(dial_book,city_name)
end
