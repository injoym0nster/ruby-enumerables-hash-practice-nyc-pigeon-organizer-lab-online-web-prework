def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = Hash.new
  data.each do |level1,level2|
    level2.each do |key,name_array|
      name_array.each do |name|
        pigeons[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  pigeons_names = pigeons.keys
  data[:color].each do |color,names|
    names.each do |name|
      pigeons_names.each do |pigeon_name|
        if pigeon_name == name
          pigeons[pigeon_name][:color] << color.to_s
        end
      end
    end
  end
  data[:gender].each do |gender,names|
    names.each do |name|
      pigeons_names.each do |pigeon_name|
        if pigeon_name == name
          pigeons[pigeon_name][:gender] <<  gender.to_s
        end
      end
    end
  end
  data[:lives].each do |location,names|
    names.each do |name|
      pigeons_names.each do |pigeon_name|
        if pigeon_name == name
          pigeons[pigeon_name][:lives] << location
        end
      end
    end
  end
  return pigeons      
end
