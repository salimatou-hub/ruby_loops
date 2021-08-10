# Fais donc une méthode average_finish_time qui va simuler au moins 100 parties, 
# et te retourner le nombre de tours moyen pour arriver à la 10ème marche.

def game 
    roll = 0 
    stair = 0 
      while stair < 10 
       n = rand (1..6)
        puts " Lance les dés"
        
        if n == 1  
            if stair == 0 
                puts " Vous êtes sur #{stair} ème marche"
                stair = stair 
                roll = roll + 1
            else 
                puts " Descendez d'une marche\n"
                stair = stair - 1
                puts " Vous êtes sur #{stair - 1} ème marche"
                roll = roll + 1
            end

        elsif n == 2 || n == 3 || n == 4 
            puts " Restez sur place"
            stair = stair
            puts " Vous êtes au #{stair} eme étage"
            roll = roll + 1
        
        elsif n == 5 || n == 6 
            puts " Montez une marche"
            stair = stair + 1 
            puts " Vous êtes au #{stair + 1} eme étage"
            roll = roll + 1
        end

    if stair == 10
        roll = roll 
        puts " VOUS AVEZ GAGNE EN #{roll} COUPS "
    end 
  end

  return roll
end

def average_finish_time
	roll = game
	tab = 0
	100.times do
		game
		tab = tab.to_f + roll
end
	print "MOYENNE #{tab / 100}"
end
game
average_finish_time