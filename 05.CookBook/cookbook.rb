require_relative 'config/application'
require './models/recipe'

# your program here

puts "Salut Robuchon, what do you want to do today?"
puts "1. create a recipe"
puts "2. delete all recipes"
puts "3. read your recipes"
puts "4. print last recipe"

choice = gets.chomp.to_i

if choice == 1
  puts "Name ?"
  name = gets.chomp
  puts "Desc ?"
  desc = gets.chomp
  puts "Length ?"
  length = gets.chomp.to_i
  puts "Difficulty ?"
  difficulty = gets.chomp.to_i

  Recipe.create(name: name, description: desc, length: length, difficulty: difficulty)
  
elsif choice == 2
	puts "Do you really want to DELETE ALL RECIPIES?(Y/N)"
	  answer = gets.chomp.downcase.to_s
	  if answer == "y"
	  	recipe = Recipes.find_by(name: name, description: desc, length: length, difficulty: difficulty)
        recipe.destroy
	  else
			nil
	  end

  
elsif choice == 3
	Recipe.all.each do |recipe|
		p recipe
	end
elsif choice == 4
	p Recipe.last
	
else
  puts "i did not understand"
end