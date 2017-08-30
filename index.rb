class Personne
    def initialize(name = "Inconnu")
        @name = name
    end
    
    def say_hi 
        puts "Bonjour #{@name}!"
    end
    def say_bye
        puts "Au Revoir #{@name}! A bientot !"
    end
    def make_selected
        puts "Que voulez vous faire ?"
        puts "1 - Etre Saluer"
        puts "2 - S'en aller"
        choix = gets.to_i
    end
    
end

puts "Ecris ton Prénom"
names = gets
prenom = Personne.new(names)
choix = prenom.make_selected
status = false
while (status == false)    
    puts case choix
    when 1
        prenom.say_hi
        choix = prenom.make_selected
    when 2
        prenom.say_bye
        status = true
    else
        puts "Attention vous n'avez pas choisi un chiffre valable"
        choix = prenom.make_selected
    end
end

    
