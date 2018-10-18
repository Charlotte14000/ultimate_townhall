class Menu

def initialize
  print `clear`
  puts "Bienvenue dans MassMailling 3.0 by THPLille #Welsh #Biere"
  puts
  puts
  puts "Ce super programme te permettra de récupérer les informations (mails, twitters) sur les mairies du Nord Pas-de-Calais et de la Seine-Maritime, de leur envoyer un mail ou même de les follow sur twitter ! #NonBinaire"
  puts
  puts "Dis moi tout, jeune mouss', que veux-tu savoir ou que veux-tu que je fasse pour toi? (entre le numéro associé pour lancer l'action désirée)"
  puts " 1 - Scrappes les mairies !"
  puts " 2 - Combien de mairies as tu en base de données ? Dans quels départements ?"
  puts " 3 - A quoi ressemble le mail que tu leur envoies ?"
  puts " 4 - Trop cool le mail :D Envoies leur !"
  puts " 5 - Tu as leur twitter ?"
  puts " 6 - Let's follow them all o/"
  print "Ton choix ? : "

  choice
end

def choice
  choice = gets.chomp

  case choice
  when '1'
    puts "Scrappons ! Ca prend un peu de temps, va prendre un café :)"
    # Appel scrappeur
  when '2'
    # Appel nb de mairie
  when '3'
    # Afficher lemail
  when '4'
    # Send mails
  when '5'
    # Afficher les twitter
  when '6'
    # Follow them all !
  else
    puts 'Ton choix est invalide ! Essaie encore : '
    choice
  end
end

end
