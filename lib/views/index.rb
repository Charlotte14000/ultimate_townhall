class Menu

	def initialize
		puts "Bonjour, Entrez"
		puts "1 pour recuperer les emails des mairies des trois departements du Nord du Pas de Calais et de la Seine maritime"
		puts "2 pour envoyer des mails à ces mairies"
		puts "3 pour suivre les mairies présentes sur Twitter"
		print "Que voulez-vous faire ? > "
		choice = gets.chomp.to_i
		if choice == 1
			Scrapper.new
		elsif choice == 2
			Mailer.new
		elsif choice == 3
			Follow.new
		else
			puts "Non n'avons pas econnu votre choix, désolé."
		end
	end

end
