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
end
