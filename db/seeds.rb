# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MusicalGenre.create(name: "Rock")
MusicalGenre.create(name: "Pop")
MusicalGenre.create(name: "Samba")
MusicalGenre.create(name: "Funk")
MusicalGenre.create(name: "MPB")
MusicalGenre.create(name: "Jazz")
MusicalGenre.create(name: "Classica")
Album.create(name: "Odiosa Natureza Humana", artist: "Matanza")
Music.create(name: "Remedios de Mais", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "Em Respeito ao Vicio", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "Ela Nao Me Perdoou", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "Escarnio", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "Tudo Errado", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "Saco Cheio e Mau-Humor", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "Odiosa Natureza Humana", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "Carvao, Enxofre e Salitre", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "Amigo Nenhum", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "Conforme Disseram As Vozes", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "Melhor Sem Voce", explicit: true, album_id: 1, musical_genre_id: 1)
Music.create(name: "A Menor Paciencia", explicit: true, album_id: 1, musical_genre_id: 1)

