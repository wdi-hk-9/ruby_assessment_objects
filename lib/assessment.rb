class Person
    attr_accessor :firstname, :lastname, :fullname

    def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
    end

    def fullname
        @fullname = @firstname + @lastname
    end

end

class Player < Person
    attr_accessor :health, :strength, :alive

    def initialize
        @health = 20
        @strength = 5
    end

    def alive
        if(@health>0)
            @alive = true
        else
            @alive = false
        end
    end

#Don't understand the question very well. Here I just create a method that can attack a player
    def attack(player)
        player.health -= @strength
    end

end


class Knight < Player
    attr_accessor :health, :strength

    def initialize
        @health = 50
        @strength = 7
    end

end

class Wizard < Player
    attr_accessor :health, :strength

    def initialize
        @health = 20
        @strength = 75
    end

end

#testing - creating new person
bryan = Person.new("Bryan", "Fong")
puts "bryan's firstname #{bryan.firstname}"
puts "bryan's lastname #{bryan.lastname}"
puts "bryan's fullname #{bryan.fullname}"

#testing - creating new player (inherit functions from person?)
newPlayer = Player.new
newPlayer.firstname = "New"
newPlayer.lastname = "Player"
puts "newPlayer's firstname #{newPlayer.firstname}"
puts "newPlayer's lastname #{newPlayer.lastname}"
puts "newPlayer's fullname #{newPlayer.fullname}"
puts "newPlayer's health #{newPlayer.health}"
puts "newPlayer's strength #{newPlayer.strength}"
puts "newPlayer's alive #{newPlayer.alive}"

#testing - creating new Knight (inherit functions from person and player?)
newKnight = Knight.new
newKnight.firstname = "New"
newKnight.lastname = "Knight"
puts "newKnight's firstname #{newKnight.firstname}"
puts "newKnight's lastname #{newKnight.lastname}"
puts "newKnight's fullname #{newKnight.fullname}"
puts "newKnight's health #{newKnight.health}"
puts "newKnight's strength #{newKnight.strength}"
puts "newKnight's alive #{newKnight.alive}"

#testing - creating new Wizard (inherit functions from person and player?)
newWizard = Wizard.new
newWizard.firstname = "New"
newWizard.lastname = "Wizard"
puts "newWizard's firstname #{newWizard.firstname}"
puts "newWizard's lastname #{newWizard.lastname}"
puts "newWizard's fullname #{newWizard.fullname}"
puts "newWizard's health #{newWizard.health}"
puts "newWizard's strength #{newWizard.strength}"
puts "newWizard's alive #{newWizard.alive}"

#testing - attack(player) function
puts "-check attack(player) function-"
newKnight.attack(newWizard)
puts newWizard.health
puts newWizard.alive
newWizard.attack(newKnight)
puts newKnight.health
puts newKnight.alive


