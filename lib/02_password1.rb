# Le programme va se décomposer en trois parties :
# une partie signup, demandant à l'utilisateur de définir un mot de passe
# une partie login, demandant à l'utilisateur de rentrer son mot de passe jusqu'à ce qu'il corresponde à celui défini précédemment
# une partie welcome_screen, affichant un écran de bienvenue avec des informations top secrètes de la NSA

def signup
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
            puts "Agent identifié !"
            puts "Bienvenue 0018"
            puts ""*3
        end
    end
end

def welcome_screen 
    puts "* * * * * * * * * * * * * * * * * * * * * *  *" 
    puts "*                                            *"
    puts "*                  SOS 0018                  *"
    puts "*               Votre mission,               *"
    puts "*  si vous l'acceptez, est d'infiltrer THP   *"
    puts "*     Ce message s'auto-effaçera dans        *"
    puts "*                                            *"
    puts "* * * * * * * * * * * * * * * * * * * * * *  *" 
    puts "                      3                       "
    puts "                      2                       "
    puts "                      1                       "
    puts "               Message detruit                " 
end

def perform     
    password = signup
    login (password)
    welcome_screen
end

perform