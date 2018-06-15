class Ingredient
  attr_accessor :name, :allergen
  @@all = []

  def initialize(name)
    @name = name
    @allergen = allergen
    @@all << self
  end

  def self.all
    @@all
  end


  def recipes
    recipe_ingredients = RecipeIngredient.all.select do |recipe_ingr|
      recipe_ingr.ingredient == self
    end

    recipe_ingredients.map do |recipe_ingr|
      recipe_ingr.recipe.name
    end
  end

end
