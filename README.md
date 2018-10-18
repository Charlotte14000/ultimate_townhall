# 📩 Envoi d'emails en masse 📩

## 🐣 Introduction 🐣

### 🍻 Présentation de l'équipe 🍻

Ce projet a été réalisé  en collaboration avec <a href = "https://github.com/VVH0">Virginie.VH</a> (@VVH), <a href = "https://github.com/anais-dlgt">Anaïs.D</a> (@Anaïs), <a href = "https://github.com/TheLondonWhaleThomas.P">Thomas.P</a> (@ Thomas Prs TIW), <a href = "https://github.com/Kirimari">Mustapha.AO</a> (@Mouss), <a href = "https://github.com/TheStarrK">Tony.K</a> (@Tony), <a href = "https://github.com/immorsh">Josh.S</a> (@shaka), <a href = "https://github.com/perezfelix">Félix.P</a> (@Félix), <a href = "https://github.com/Clement42">Clément.B</a> (@Clement Boiral) et <a href = "https://github.com/Rafikder">Rafik.D</a> (@Rafikder) qui représentent la team Lilloise (59 rpz) de The Hacking Project.

### 💻 Présentation du programme 💻

Ce programme consiste à contacter toutes les mairies de France dans un premier temps, par email puis dans un second temps, via Twitter, pour que ces dernières parlent de THP.

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

<p style="text-align: center;">Bonjour,&nbsp; </p>
<p>Nous sommes &eacute;l&egrave;ves &agrave; <strong>The Hacking Project</strong>, une formation au code gratuite, sans locaux, sans s&eacute;lection, sans restriction g&eacute;ographique. La p&eacute;dagogie de ntore &eacute;cole est celle du peer-learning, o&ugrave; nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident &agrave; faire de The Hacking Project un nouveau format d'&eacute;ducation pour tous.</p>
<p>D&eacute;j&agrave; 500 personnes sont pass&eacute;es par The Hacking Project. Est-ce que vous voulez changer le monde avec nous ?</p>
<p><strong>Charles,</strong> co-fondateur de The Hacking Project pourra r&eacute;pondre &agrave; toutes vos questions : <strong>06.95.46.60.80</strong></p>
<p>Excellente journ&eacute;e &agrave; vous,&nbsp;<img src="https://html-online.com/editor/tinymce4_6_5/plugins/emoticons/img/smiley-smile.gif" alt="smile" /></p>
<p><strong>La team Lille de The Hacking Project</strong></p>
<p><img src="https://www.thehackingproject.org/assets/thp-logo-5f2f06c9444205a88123ca1de74646970e5a1dfb03698d02db33e5e62a60d6cd.png" width="183" height="183" /></p>

### 🙈 Le nombre de mairies touchées 🙈

Grâce au scrapping, nous avons touché 3 départements :
  - Le Nord (59) : 652 mairies
  - Le Pas-De-Calais (62) : 891 mairies
  - La Seine-Maritime (76) : 743 mairies

Soit un total de 2 286 mairies.

### ❤ Le handle utilisé ❤

La team de Lille étant très soudée, un handle a été créé spécialement pour l'occasion : <a href="https://twitter.com/ThpLille">@ThpLille</a>
</br>Soyez nombreux à nous suivre! Bisous!
