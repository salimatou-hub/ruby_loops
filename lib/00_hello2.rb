# Modifie la méthode pour qu'elle prenne désormais en entrée 
# une variable first_name et que ton script affiche "Bonjour, first_name !"

def ask_first_name # nom de la methode pour demander le prénom
    puts "Quel est ton prénom ?" # on demande le prenom
    print ">"
    first_name = gets.chomp # on le stocke
    return first_name
end

def says_hello (first_name) # nom de la methode pour dire bonjour avec variable prénom
    puts "Bonjour, #{first_name} !"
end

first_name = ask_first_name
says_hello (first_name)

