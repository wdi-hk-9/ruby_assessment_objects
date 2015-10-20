class Person
  def initialize (first_name, last_name, full_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = full_name
  end
end


class Player < Person
  def initialize (first_name, last_name, full_name, health=20, strength=5, alive=true)
    super(first_name, last_name, full_name)
    @health = health
    @strength = strength
    @alive = alive
  end

  def take_damage(attack_strength)
    @health -= attack_strength
    if @health <= 0
      @alive = false
      return "you dead m8. " + @health.to_s + "hp overkill"
    else
      return @health.to_s + "hp remaining"
    end
  end

  def attack(player)
    player.take_damage(@strength)
  end
end


class Knight < Player
  def initialize (first_name, last_name, full_name, health=50, strength=7, alive=true)
    super
  end
end

class Wizard < Player
  def initialize (first_name, last_name, full_name, health=20, strength=75, alive=true)
    super
  end
end

shittywizard = Wizard.new("Jacky", "Lee", "Jacky Lee")
shittyknight = Knight.new("Denis", "Cheung", "Denis Cheung")