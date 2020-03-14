


def nyc_pigeon_organizer(data)
   
   hash = {}

    data.each do |key, value|

        hash = create_new_pigeon_key(key, value, hash)

        hash = add_second_level(key, hash)

        hash = add_third_level_array(key, value, hash)

    end
   
    return hash
 
end
