class RecipeCard
  attr_accessor :recipe, :name, :user, :date, :rating

  @@all = []

  def initialize(user, recipe, date, rating)

    @recipe = recipe
    @user = user

    @date = date
    @rating = rating

    @@all << self
  end

  def self.all
    @@all
  end


end
