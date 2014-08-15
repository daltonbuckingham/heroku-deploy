class Recipe
  include Mongoid::Document
  include Mongoid::Paperclip
  field :name , type: String
  field :ingredient, type: String
  field :cooktime, type: Integer
  field :difficulty, type: Integer

 has_many :recipe_ingredients
 has_mongoid_attached_file :image 
 validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]






  def ingredients
  end

  def ingredient_ids
  end

  def ingredient_ids=(list)
  end

  def ingredient_list
  end






  #bring back an array of recipes
  # def recipes
  #   Recipe.find self.ingredients.map(&:recipe_id)
  # end

  # bring back and array of all recipe IDs
  # def recipe_ids
  #   self.recipes.map(&:recipe_id)
  # end

end
