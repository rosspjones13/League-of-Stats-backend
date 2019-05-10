require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

users = [
  {name: "Artem"},
  {name: "Ross"},
  {name: "Chine"},
  {name: "Ben"},
  {name: "ben"},
  {name: "Matthew"},
  {name: "Anthony"},
  {name: "Andrea"},
  {name: "Kyle"},
  {name: "Phil"},
  {name: "Hai"},
  {name: "Heloise"},
  {name: "Shannon"},
  {name: "James"},
  {name: "Chris"},
  {name: "Serven"},
  {name: "Ryan"},
  {name: "Shinik"},
  {name: "Melanie"},
  {name: "Jake"},
  {name: "Paul"},
  {name: "Ann"}
]

allUsers = users.map {|user| User.create(user)}

champions = [
  {name: 'Aatrox', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Aatrox.png'},
  {name: 'Ahri', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Ahri.png'},
  {name: 'Akali', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Akali.png'},
  {name: 'Alistar', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Alistar.png'},
  {name: 'Amumu', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Amumu.png'},
  {name: 'Anivia', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Anivia.png'},
  {name: 'Annie', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Annie.png'},
  {name: 'Ashe', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Ashe.png'},
  {name: 'Aurelion Sol', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/AurelionSol.png'},
  {name: 'Azir', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Azir.png'},
  {name: 'Bard', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Bard.png'},
  {name: 'Blitzcrank', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Blitzcrank.png'},
  {name: 'Brand', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Brand.png'},
  {name: 'Braum', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Braum.png'},
  {name: 'Caitlyn', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Caitlyn.png'},
  {name: 'Camille', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Camille.png'},
  {name: 'Cassiopeia', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Cassiopeia.png'},
  {name: "Cho'Gath", image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Chogath.png'},
  {name: 'Corki', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Corki.png'},
  {name: 'Darius', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Darius.png'},
  {name: 'Diana', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Diana.png'},
  {name: 'Dr. Mundo', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/DrMundo.png'},
  {name: 'Draven', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Draven.png'},
  {name: 'Ekko', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Ekko.png'},
  {name: 'Elise', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Elise.png'},
  {name: 'Evelynn', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Evelynn.png'},
  {name: 'Ezreal', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Ezreal.png'},
  {name: 'Fiddlesticks', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Fiddlesticks.png'},
  {name: 'Fiora', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Fiora.png'},
  {name: 'Fizz', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Fizz.png'},
  {name: 'Galio', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Galio.png'},
  {name: 'Gangplank', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Gangplank.png'},
  {name: 'Garen', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Garen.png'},
  {name: 'Gnar', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Gnar.png'},
  {name: 'Gragas', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Gragas.png'},
  {name: 'Graves', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Graves.png'},
  {name: 'Hecarim', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Hecarim.png'},
  {name: 'Heimerdinger', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Heimerdinger.png'},
  {name: 'Illaoi', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Illaoi.png'},
  {name: 'Irelia', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Irelia.png'},
  {name: 'Ivern', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Ivern.png'},
  {name: 'Janna', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Janna.png'},
  {name: 'Jarvan IV', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/JarvanIV.png'},
  {name: 'Jax', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Jax.png'},
  {name: 'Jayce', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Jayce.png'},
  {name: 'Jhin', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Jhin.png'},
  {name: 'Jinx', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Jinx.png'},
  {name: "Kai'Sa", image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Kaisa.png'},
  {name: 'Kalista', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Kalista.png'},
  {name: 'Karma', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Karma.png'},
  {name: 'Karthus', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Karthus.png'},
  {name: 'Kassadin', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Kassadin.png'},
  {name: 'Katarina', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Katarina.png'},
  {name: 'Kayle', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Kayle.png'},
  {name: 'Kayn', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Kayn.png'},
  {name: 'Kennen', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Kennen.png'},
  {name: "Kha'Zix", image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Khazix.png'},
  {name: 'Kindred', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Kindred.png'},
  {name: 'Kled', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Kled.png'},
  {name: "Kog'Maw", image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/KogMaw.png'},
  {name: 'LeBlanc', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Leblanc.png'},
  {name: 'Lee Sin', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/LeeSin.png'},
  {name: 'Leona', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Leona.png'},
  {name: 'Lissandra', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Lissandra.png'},
  {name: 'Lucian', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Lucian.png'},
  {name: 'Lulu', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Lulu.png'},
  {name: 'Lux', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Lux.png'},
  {name: 'Malphite', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Malphite.png'},
  {name: 'Malzahar', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Malzahar.png'},
  {name: 'Maokai', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Maokai.png'},
  {name: 'Master Yi', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/MasterYi.png'},
  {name: 'Miss Fortune', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/MissFortune.png'},
  {name: 'Mordekaiser', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Mordekaiser.png'},
  {name: 'Morgana', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Morgana.png'},
  {name: 'Nami', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Nami.png'},
  {name: 'Nasus', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Nasus.png'},
  {name: 'Nautilus', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Nautilus.png'},
  {name: 'Neeko', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Neeko.png'},
  {name: 'Nidalee', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Nidalee.png'},
  {name: 'Nocturne', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Nocturne.png'},
  {name: 'Nunu & Willump', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Nunu.png'},
  {name: 'Olaf', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Olaf.png'},
  {name: 'Orianna', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Orianna.png'},
  {name: 'Ornn', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Ornn.png'},
  {name: 'Pantheon', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Pantheon.png'},
  {name: 'Poppy', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Poppy.png'},
  {name: 'Pyke', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Pyke.png'},
  {name: 'Quinn', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Quinn.png'},
  {name: 'Rakan', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Rakan.png'},
  {name: 'Rammus', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Rammus.png'},
  {name: "Rek'Sai", image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/RekSai.png'},
  {name: 'Renekton', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Renekton.png'},
  {name: 'Rengar', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Rengar.png'},
  {name: 'Riven', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Riven.png'},
  {name: 'Rumble', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Rumble.png'},
  {name: 'Ryze', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Ryze.png'},
  {name: 'Sejuani', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Sejuani.png'},
  {name: 'Shaco', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Shaco.png'},
  {name: 'Shen', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Shen.png'},
  {name: 'Shyvana', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Shyvana.png'},
  {name: 'Singed', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Singed.png'},
  {name: 'Sion', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Sion.png'},
  {name: 'Sivir', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Sivir.png'},
  {name: 'Skarner', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Skarner.png'},
  {name: 'Sona', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Sona.png'},
  {name: 'Soraka', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Soraka.png'},
  {name: 'Swain', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Swain.png'},
  {name: 'Sylas', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Sylas.png'},
  {name: 'Syndra', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Syndra.png'},
  {name: 'Tahm Kench', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/TahmKench.png'},
  {name: 'Taliyah', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Taliyah.png'},
  {name: 'Talon', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Talon.png'},
  {name: 'Taric', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Taric.png'},
  {name: 'Teemo', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Teemo.png'},
  {name: 'Thresh', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Thresh.png'},
  {name: 'Tristana', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Tristana.png'},
  {name: 'Trundle', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Trundle.png'},
  {name: 'Tryndamere', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Tryndamere.png'},
  {name: 'Twisted Fate', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/TwistedFate.png'},
  {name: 'Twitch', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Twitch.png'},
  {name: 'Udyr', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Udyr.png'},
  {name: 'Urgot', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Urgot.png'},
  {name: 'Varus', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Varus.png'},
  {name: 'Vayne', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Vayne.png'},
  {name: 'Veigar', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Veigar.png'},
  {name: "Vel'Koz", image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Velkoz.png'},
  {name: 'Vi', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Vi.png'},
  {name: 'Viktor', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Viktor.png'},
  {name: 'Vladimir', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Vladimir.png'},
  {name: 'Volibear', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Volibear.png'},
  {name: 'Warwick', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Warwick.png'},
  {name: 'Wukong', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/MonkeyKing.png'},
  {name: 'Xayah', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Xayah.png'},
  {name: 'Xerath', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Xerath.png'},
  {name: 'Xin Zhao', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/XinZhao.png'} ,
  {name: 'Yasuo', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Yasuo.png'},
  {name: 'Yorick', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Yorick.png'},
  {name: 'Zac', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Zac.png'},
  {name: 'Zed', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Zed.png'},
  {name: 'Ziggs', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Ziggs.png'},
  {name: 'Zilean', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Zilean.png'},
  {name: 'Zoe', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Zoe.png'},
  {name: 'Zyra', image: 'https://ddragon.leagueoflegends.com/cdn/9.9.1/img/champion/Zyra.png'}
]

champions.each {|champion| Champion.create(champion)}

resultRand = [true, false]

allUsers.each do |user|
  30.times do |i|
    match = Match.create({
    user: user,
    champion_id: Faker::Number.between(1, champions.length),
    kills: Faker::Number.between(0, 20),
    deaths: Faker::Number.between(0, 20),
    assists: Faker::Number.between(0, 20),
    result: resultRand.sample
    })

    match.update!(
      created_at: Faker::Time.between(2.months.ago, Date.today, :all)
    )
  end
end

teams = 10.times do |i|
  teamInstance = Team.create(name: Faker::Games::Dota.team)

  while teamInstance.users.length < 5 do
    randUser = allUsers[Faker::Number.between(0, allUsers.length-1)]
    if !teamInstance.users.include? randUser
      teamInstance.users << randUser
    end
  end
end