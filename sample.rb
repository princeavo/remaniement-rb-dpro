#methode les méthodes de saisies des points d'évaluation et des commentaire
 def input_evaluation
    puts "Veuillez entrer une évaluation de 1 à 5"
    point = gets.to_i
    while true
       if point <= 0 || point > 5
        puts "Veuillez entrer une évaluation de 1 à 5"
        point = gets.to_i
      else
        puts "Merci d'entrer un commentaire"
        comment = gets
        post = "Points : #{point} Commentaire : #{comment}"
        File.open("data.txt", "a") do |file|
          file.puts(post)
        end
        break
      end
    end
 end
 # definir une méthode pour vérifier les résulats  obtenues
 def show_result
    puts "Résultats jusqu'à présent"
    File.open("data.txt", "r") do |file|
      file.each_line do |line|
        puts line
       end
    end
 end


while true
    puts "Veuillez choisir l'action que vous souhaitez effectuer"
    puts "1: Entrer des points d'évaluation et des commentaires"
    puts "2: Vérifier les résultats jusqu'à présent"
    puts "3: Quitter"
    num = gets.to_i
# en isolant le processus dans une methode ,l'instruction de cas
   case num
   when 1
      input_evaluation
   when 2
      show_result
   when 3
      puts"Terminer"
      break
   else
        puts "Veuillez entrer un nombre entre 1 et 3"
   end
end
