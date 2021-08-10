puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    puts "rentre un nombre entre 0 et 25"
    print ">"
   n = gets.chomp.to_i 
    puts "Voici ta pyramide !"
    
    def full_pyramid(n)
        i = n - 1
        while i <= n
          puts " "*(n-i)+"#"*(2*i - 1)+" "*(n-i)
          i -= 1
        end
      end

      full_pyramid(n)