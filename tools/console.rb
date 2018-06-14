require_relative '../config/environment.rb'

indira = User.new('Indira')
joe = User.new('Joe')

pizza = Recipe.new('pizza', 'cheese')
pasta = Recipe.new('pasta', 'sauce')
noodles = Recipe.new('noodles', 'scallions')


binding.pry
