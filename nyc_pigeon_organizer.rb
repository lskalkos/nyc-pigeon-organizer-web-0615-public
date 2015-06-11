require 'pry'

def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  new_hash = Hash.new(0)

  pigeon_names = pigeon_data.values.each_with_object([]) {|property_hash, names_array| names_array << property_hash.values}.flatten.uniq

  pigeon_keys = pigeon_data.keys

  new_hash = pigeon_names.each_with_object({}) do |name, hash|
    hash[name] = Hash.new
    pigeon_keys.each do |key|
      hash[name][key] = []
    end
  end

  pigeon_data.each do |attr_key, property_hash|
    property_hash.each do |property_key, names_array|
      names_array.each do |pigeon|
        new_hash[pigeon][attr_key] << property_key.to_s 
      end
    end
  end

  new_hash

end

