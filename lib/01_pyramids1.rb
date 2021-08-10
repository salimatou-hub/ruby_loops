
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    puts "rentre un nombre entre 0 et 25"
    print ">"
    nombre = gets.chomp.to_i 
    puts "Voici ta pyramide !"
    

    def full_pyramid (nombre)
        n = 1
        while n <= nombre
            puts ("# " * n).rjust(n + nombre)
            n += 1
        end
    end


    full_pyramid (nombre)
    
      