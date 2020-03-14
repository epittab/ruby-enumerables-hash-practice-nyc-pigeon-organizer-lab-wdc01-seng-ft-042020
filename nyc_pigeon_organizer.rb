
def add_second_level_symbol(new_key, hash)

    hash.each do |key, value| 
        if (!hash[key][new_key])
            hash[key][new_key] = []
        end
    end

end


def add_third_level_array(old_key, old_hash, hash)

    # old_key = :color
    # old_hash = :purple=>["Theo", "Peter Jr.", "Lucky"], 
        #:grey=>["Theo", "Peter Jr.", "Ms. K"], 
        #:white=>["Queenie", "Andrew", "Ms. K", "Alex"], 
        #:brown=>["Queenie", "Alex"]}
    # array = ["purple", "grey", "white", "brown"]

    old_hash.each do |key, value| 
        value.each do |name|
           
            hash[name][old_key] << key.to_s

        end
    
    end
    return hash
end


def nyc_pigeon_organizer(data)
   
   hash = {}

    data.each do |key, value|

        hash = create_new_pigeon_key(key, value, hash)

        hash = add_second_level_symbol(key, hash)

        hash = add_third_level_array(key, value, hash)

    end
   
    return hash
 
end
