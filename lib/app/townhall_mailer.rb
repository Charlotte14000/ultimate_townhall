require 'gmail'
require 'google/apis/gmail_v1'
require 'googleauth'
require 'gmail_xoauth'
require 'googleauth/stores/file_token_store'
require 'fileutils'
require 'json'
require 'csv'

class Mailer

  attr_accessor :contacts

  def Initialize(file)
    @text_mail_to_send
    @contacts = []

    #recup_mail_from_csv_json

  end



  def recup_mail_from_csv_json
    # On va avoir besoin du fichier csv ou JSON. Tous les contacts dans ce fichier vont être stockées
    # dans la variable @contacts. Puis on va boucler sur la variable @contacts pour créer notre spreadsheet.
    session= GoogleDrive::Session.from_config("config.json")
    ws = session.spreadsheet_by_key("").worksheet(0)
    ws [1, 1] = "Nom de la ville"
    ws [1, 2] = "Mail de la ville"
    ws [1, 3] = "Numéro de département"

    row = 2
    @contacts.each do |contact|
      ws [1, 1] = contact["name"]
      ws [1, 2] = contact["mail_ville"]
      ws [1, 3] = contact["dept_ville"]
    row = row + 1
    end
ws.save
end



def send_mail_to_townhall

  gmail = Gmail.connect!("thehackingproject.lille@gmail.com","teamwelsh")
    #On va utiliser la spreadsheet crée auparavant pour recuperer les mails. On va envoyer un mail contenu dans un
    #fichier HTML à chaque mail récupérés.

    gmail.deliver do
    to "ait.mus06@gmail.com"
    subject " objet"
      text_part do
      body "test mail"
      end
      html_part do
      content_type 'text/html; charset=UTF-8'
      body " Test mail"
      end
  end

end
end

spammer = Mailer.new
spammer.send_mail_to_townhall
