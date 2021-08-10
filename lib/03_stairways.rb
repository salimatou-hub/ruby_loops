# Tu vas maintenant coder un super jeu qui déchire. 
# Mario n'a qu'à bien se tenir avec sa pyramide ! 
# Nous allons imaginer un programme dans lequel une gentille personne va devoir monter 10 marches en fonction d'un jet de dé. Une version informatique du jeu de l'oie en quelque sorte !
# Voici comment cela va se dérouler : à l'exécution, le programme lance une partie. Le joueur est tout en bas d'un escalier à 10 marches, et à chaque tour il va lancer un dé :

# S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
# S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
# S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)

def game (stair)
    n = 1..6 # dé
    roll = 0 # nombre de coups
    stair = 0 # numero étage
    while stair < 10 # une boucle quand le nombre d'étages < à 10 (ligne 14 à 43)
        puts " Lance les dés"
        print ">" 
        n = gets.chomp.to_i
        # definir la condition si on est l'étage 0 et qu'on lance 1, on ne peut pas descendre, donc on reste sur place.(ligne 18 à 23)
        if n == 1  
            if stair == 0 
                puts " Vous êtes sur #{stair} ème marche"
                stair = stair 
                roll = roll + 1
            else 
                puts " Descendez d'une marche"
                puts " Vous êtes sur #{stair - 1} ème marche"
                stair = stair - 1
                roll = roll + 1
            end

        elsif n == 2 || n == 3 || n == 4 
            puts " Restez sur place"
            puts " Vous êtes au #{stair} eme étage"
            stair = stair
            roll = roll + 1
        
        elsif n == 5 || n == 6 
            puts " Montez une marche"
            puts " Vous êtes au #{stair + 1} eme étage"
            stair != 10
            stair = stair + 1 
            roll = roll + 1
        end
    end

    if stair == 10
        roll = roll 
        puts " VOUS AVEZ GAGNE EN #{roll} COUPS "
        puts ""
        puts "  *           *    * * * *    * * * *    |"
        puts "   *        *    *          *            |"
        puts "     *    *      *          *            | "
        puts "       *         * * * * *    * * * *    |"   
        puts "       *         *                   *   |" 
        puts "       *         *                   *   |"
        puts "       *          * * * * *  * * * *     O"   
    end 
end

game (0)








