class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    #@ingredient = ingredient --- i don't think i need this!
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
  end

  def recipe_cards
    RecipeCard.all.select do |card|
      card.recipe == self
    end
  end

  def users
    recipe_cards.map do |card|
      card.user
    end
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingr|
      RecipeIngredient.new(self, ingr)
    end
  end

  def ingredients
    recipe_ingredients = RecipeIngredient.all.select do |recipe_ingr|
      recipe_ingr.recipe == self
    end

    recipe_ingredients.map do |recipe_ingr|
      recipe_ingr.ingredient.name
    end
  end

end


#   def allergens
#     Ingredient.all.select do |ingr|
#       ingr.allergen
#   end
#
