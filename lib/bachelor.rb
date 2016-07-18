require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |seas, contestants|
    if seas == season
      contestants.each do |stats|
          if stats["status"] == "Winner"
            return stats["name"].split(" ")[0]
          end
      end
      end
    end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
    contestants.each do |stats|
      if stats["occupation"] == occupation
        return stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, contestants|
    contestants.each do |stats|
      if stats["hometown"] == hometown
        counter += 1
      end
    end
  end
return counter
end

#why can't we use a loop here?

def get_occupation(data, hometown)
  data.each do |seasons, contestants|
    contestants.each do |stats|
        if hometown == stats["hometown"]
        return stats["occupation"]
end
end
end
end

def get_average_age_for_season(data, season)
  total_age = 0
  count = 0
  data.each do |seas, contestants|
    if seas == season
      contestants.each do |stats|
        count += 1
        total_age += stats["age"].to_i
end
end
end
return (total_age.to_f / count).round
end
