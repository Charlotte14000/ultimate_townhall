class Menu

	def initialize
		puts "Bonjour, Entrez 1 pour recuperer les emails des villes des trois departements du Nord, du Pas de Calais et de la Seine maritime, 2 pour envoyer des mails et 3 pour suivre les mairies sur Twitter"
		print ">"
		choice = gets.chomp.to_i
		if choice == 1
			Mailer.new
		elsif choice == 2
			Scrapper.new
		elsif choice == 3
			Follow.new
		else
			puts "Non n'avons pas econnu votre choix, désolé. Que voulez vous faire? >"
			choice = gets.chomp.to_i
		end
	end

end
