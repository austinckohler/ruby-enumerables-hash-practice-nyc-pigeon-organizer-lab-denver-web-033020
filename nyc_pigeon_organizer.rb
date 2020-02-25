#original is a HoHoA organized by attritbutes :color, :gender, : lives
#convert to  a hash where names are keys and => hash of their attributes 
#iterate over hash buy collecting name and insert as a key of new hash with 

# pigeons = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }


def nyc_pigeon_organizer(data)
  pigeon_names = {}
  data.each do |key, values| #key is are color, gender, lives //  first itiration goes through :colors, second :gender, third :lives 
    values.each do |value, array| # highlights :color then array, gender then array, lives and then array.
      array.each do |name| #Start with the first array and highlight each element (names of piegons)
     
    
      if pigeon_names[name] == nil #if the element is not in the next line it creates a new hash containing empty keys
        pigeon_names[name] = {} #new hash with element (name of pigeon) as the key
        pigeon_names[name][key] = [] #new array inside of hash :color => [ ] , :gender=>[ ], :lives =>[ ] inside hash // Looks like {“Theo” => {:purple => []}}
      else # if pigeon_names[name] == nil doesn't apply 
        pigeon_names[name][key] = [] #add to the name the keys (:color, :gender, :lives) :{“name” =>:color =>[""]}{"name" =>:gender =>[""]}{“name” =>:lives =>[""]}
      end #1st do
    end #2nd do
  end # 3rd do
end #if ...else
pigeon_names.each do |name, values| #now using the hash we created we go through each name then the keys. should look like Theo => {:color => ["purple", "grey"], :gender =>["male"], :lives =>["subway"]}, & then the remaining 6 pigeon_names

  values.each do |hash_value, array| # hashvalue = :color, :gender, or :lives // array = [empty array]
    
    data.each do |key, values| #Moves back to the data hash, starts w/ keys :color, :gender, :lives & values grouped together.
      
      values.each do |value, array| #Each value grouping split up into for example :purple and its array [“Theo”, “Peter Jr.”, “Lucky”]
        
        array.each do |element| #element is splitting up the array. each name is the focal point
          
          if element == name && hash_value == key #if the element in the data array == name in the hash and the hash//:gender == :gender (color_gender_lives)
          
            pigeon_names[name][hash_value] << value.to_s  #hash[:gender] => [ ] << value (:male.to_s) in data set to a string from a symbol
          end
        end 
      end
    end
  end
end
  pigeon_names
end 
      
   

