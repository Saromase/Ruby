class Timer
    def initialize(i = 0)
        @time = i
        @minute = 0
        @second = 0
    end
    def display_clear
        puts "#{@minute} : #{@second}"
    end
            
    def down_second
        @time -= 1
       if (@time > 0)
            @second -= 1
        if (@minute > 0)
            if (@second <= 0)
                @second = 59
                @minute -= 1
            end
        end
       end
    end
    def make_selected
        puts "Que voulez vous faire ?"
        puts "1 - Une Pause"
        puts "2 - Travailler"
        puts "3 - Quitter"
        choix = gets.to_i
    end
    def def_time(input = 0)
        @time = input
        @minute = input / 60
        @second = 0
    end
    def test
        @time
    end
end


puts "Bonjour"
time = Timer.new()
choix = time.make_selected
status = true
while (status == true)
    puts case choix
    when 1
        time.def_time(60)
        while true
            if (time.test == 0)
                false
            else
            time.down_second
                time.display_clear
            sleep(1)
            end
        end
    when 2
        time.def_time(1500)
        while true
            if (time.test == 0)
                false
            else
            time.down_second
                time.display_clear
            sleep(1)
            end
        end
    when 3
        puts "Au revoir" 
        status = false
    else
        puts "Attention vous n'avez pas choisi un chiffre valable"
        choix = time.make_selected
    end
end