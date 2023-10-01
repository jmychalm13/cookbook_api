class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  has_many :directions

  def ingredients_list
    list = []
    ingredients.each do |ingredient|
      list << ingredient[:name]
    end
    return list    
  end

  def total_time
    total_time = prep_time + cook_time
    if total_time > 60
      hours = total_time / 60
      minutes = total_time % 60
      if hours > 1
        result = "#{hours} hours and #{minutes} minutes"
      else
        result = "#{hours} hour and #{minutes} minutes"
      end
    else
      result = "#{total_time} minutes"
    end
    return result
  end
end
