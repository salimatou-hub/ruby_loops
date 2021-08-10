# Le but est de faire un écran de sécurité qui demande à l'utilisateur de définir un mot de passe, et un autre qui lui demande de le saisir.
# Tant que l'utilisateur ne donne pas le bon mot de passe, le programme le lui redemande.
# Si l'utilisateur rentre le bon mot de passe, il accède à un espace secret.

def password_to_save
    puts "créez un mot de passe"
    print ">"
    password = gets.chomp
end

def login (password)
    puts "rentrez votre mot de passe"
    print ">"
    login = gets.chomp
    while login != password
        puts "mot de passe incorrect"
        puts "Essayez encore"
        print ">"
        login = gets.chomp
        if login == password
        puts "Bienvenue dans votre espace !"
        end
    end
end
        
password = password_to_save
login (password)