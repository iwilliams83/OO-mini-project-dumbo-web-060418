class Recipe

  attr_accessor :name, :ingredient

  @@all = []

  def initialize(name, ingredient)
    @name = name
    @ingredient = ingredient
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

end

#   def ingredients
#     self.all.select do |recipe|
#       recipe.ingredient == self.ingredient
#   end
#
#   def allergens
#     Ingredient.all.select do |ingr|
#       ingr.allergen
#   end
#
#  def add_ingredients(ingredients)
#    ingredients.each do |ingr|
#      RecipeIngredient.new(self, ingr)
#    end
# end
