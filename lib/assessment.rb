# Write your answer bellow
#
# Happy coding!!

class Person
  attr_accessor :first_name, :last_name, :full_name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = @first_name + " " + @last_name
  end
end

#---------

class Player < Person
  attr_accessor :health, :strength, :alive
  def initialize(first_name, last_name, health=20, strength=5, alive=true)
    super(first_name, last_name)
    @health = health
    @strength = strength
    @alive = alive
  end

  def take_damage(attack_strength)
    @health -= attack_strength
    if @health <= 0
      @alive = false
    end
  end

  def attack(player)
    player.take_damage(@strength)
  end
end

#---------

class Knight < Player
  def initialize(first_name, last_name, health=50, strength=7, alive=true)
    super(first_name, last_name)
    @health = health
    @strength = strength
    @alive = alive
  end
end

class Wizard < Player
  def initialize(first_name, last_name, health=20, strength=75, alive=true)
    super(first_name, last_name)
    @health = 20
    @strength = 75
    @alive = true
  end
end

# toni = Person.new("toni", "anne")
# puts toni.full_name


knight = Knight.new("toni", "anne")
wizard = Wizard.new("denis", "cheung")

knight.attack(wizard)
wizard.attack(knight)

puts wizard.full_name
puts "Wizard Health: #{wizard.health}"
puts "Wizard Alive?: #{wizard.alive}"

puts knight.full_name
puts "Knight Health: #{knight.health}"
puts "Knight Alive?: #{knight.alive}"