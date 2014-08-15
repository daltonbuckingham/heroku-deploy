class Ingredient
  include Mongoid::Document
  field :name, type: String
  field :amount, type: Integer

  # has_many :recipe_ingredients
end
