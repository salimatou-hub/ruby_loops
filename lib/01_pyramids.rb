puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
puts "rentre un nombre entre 0 et 25"
nombre = gets.chomp.to_i
puts "Voici ta pyramide!"

def half_pyramid (nombre)
    1.upto(nombre) do |nombre|
        nombre.times { print "#" }
        puts 
    end
end

half_pyramid (nombre)