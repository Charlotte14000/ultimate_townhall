# 📩 Envoi d'emails en masse 📩

## 🐣 Introduction 🐣

### 🍻 Présentation de l'équipe 🍻

Ce projet a été réalisé  en collaboration avec Virginie.VH (@VVH0), Anaïs.D (@anais-dlgt), Thomas.P (@TheLondonWhale), Mustapha.AO (@Kirimari), Tony.K (@TheStarrK), Josh.S (@immorsh), Félix.P (@perezfelix) et Clément.B (@Clement42) qui représentent la team Lilloise (59 rpz) de The Hacking Project.

### 💻 Présentation du programme 💻

Ce programme consiste à contacter toutes les mairies de France pour que ces dernières parlent de THP dans un premier temps par email puis dans un second temps via Twitter.

### 🔌  Comment utiliser le programme ? 🔌

Cloner le repo, puis rentrer dans ce dernier via la commande :
```
cd ultimate_townhall
```
Il sera nécessaire d'installer certaines gems pour faire fonctionner le programme grâce à la commande :
```
bundle install
```
Pour lancer le programme, taper la commande suivante dans le Terminal :
```
ruby app.rb
```

## 🌿 Explication de l'arborescence et utilité des programmes 🌿

```
ultimate_townhall
|_____ app.rb
|_____ README.md
|_____ Gemfile
|_____ Gemfile.lock
|_____ .gitignore
|_____ db
|       |_____ contacts.json
|_____ lib
        |_____ app
                |_____ db_interface.rb
                |_____ townhall_follower.rb
                |_____ townhall_mailer.rb
                |_____ townhall_scrapper.rb
              views
                |_____ done.rb
                |_____ index.rb
```

La racine du projet contient app.rb qui permettra de lancer le programme et deux dossiers : db et lib.
db contient la base de données tandis que lib contient les Class qui combinées entre elles permettent de lancer le programme.

Le dossier app contient 4 fichiers Ruby :
  - db_interface.rb : génère le fichier contacts.json
  - townhall_scrapper.rb : récupère les données des mairies ciblées
  - townhall_mailer.rb : permet d'envoyer un email aux mairies ciblées
  - townhall_follower : permet de follow les mairies ciblées suite à l'envoi des emails

Le dossier views contient 2 fichiers qui permettent d''interagir avec l'utilisateur en lui donnant une interface visuelle :
  - index.rb : permet de demander à l'utilisateur ce qu'il souhaite faire
  - done.rb : permet de signifier à l'utilisateur la fin du programme demandée et s'il souhaite exécuter autre chose

## 🔧 Comment se servir du programme ? 🔧

Lorsque l'application est lancée, l'utilisateur aura plusieurs choix :
  - Scrapper
  - Envoi des emails
  - Follow des mairies

En fonction de son choix, le programme correspondant sera lancé.

Nous avons utilisé différentes gems pour l'exécution du programme :
  - ruby 2.5.1
  - json
  - rubygems
  - twitter
  - open-uri
  - csv
  - pry
  - dotenv
  - gmail
  - gmail_xoauth
  - nokogiri

## 📊 Résultats du projet 📊

### 📝 L'email envoyé 📝

Voici l'email envoyé aux mairies ciblées :

"Bonjour,

Nous sommes élèves à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de ntore école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.

Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de [NOM_COMMUNE] veut changer le monde avec nous ?

Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80

Excellente journée à vous,

La team Lille de The Hacking Project"

### 🙈 Le nombre de mairies touchées 🙈

Grâce au scrapping, nous avons touché 3 départements :
  - Le Nord (59) : 652 mairies
  - Le Pas-De-Calais (62) : 891 mairies
  - La Seine-Maritime (76) : 743 mairies

Soit un total de 2 286 mairies.

### ❤ Le handle utilisé ❤

La team de Lille étant très soudé, un handle a été créé spécialement pour l'occasion : @ThpLille
Soyez nombreux à nous suivre! Bisous
