def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person|
    person.each do |key, val|
      if val == "Winner"
        full_name = person["name"]
        return full_name.split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, info|
    info.each do |person|
      person.each do |key, val|
        if val == occupation
          return person["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, info|
    info.each do |person|
      person.each do |key, val|
        if val == hometown
          counter += 1
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, info|
    info.each do |person|
      person.each do |key, val|
        if val == hometown
          return person["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  count = 0
  data[season].each do |person|
    person.each do |key, val|
      if key == "age"
        count += 1
        age += val.to_f
      end
    end
  end
  answer = (age/count).round
  answer
end
