Movie.create!([
  {
    title: 'Avengers: Endgame',
    description:
    %{
      After the devastating events of Avengers: Infinity War, the universe
      is in ruins. With the help of remaining allies, the Avengers assemble
      once more in order to undo Thanos' actions and restore order to the universe.
    }.squish,
    released_on: "2019-04-26",
    rating: 'PG-13',
    total_gross: 1_223_641_414,
    director: 'Anthony Russo',
    duration: '181 min',
    image_file_name: 'avengers-end-game.png'
  },
  {
    title: 'Captain Marvel',
    description:
    %{
      Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.
    }.squish,
    released_on: "2019-03-08",
    rating: 'PG-13',
    total_gross: 1_110_662_849,
    director: 'Anna Boden',
    duration: '124 min',
    image_file_name: 'captain-marvel.png'
  },
  {
    title: 'Black Panther',
    description:
    %{
      T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.
    }.squish,
    released_on: "2018-02-16",
    rating: 'PG-13',
    total_gross: 1_346_913_161,
    director: 'Ryan Coogler',
    duration: '134 min',
    image_file_name: 'black-panther.png'
  },
  {
    title: 'Avengers: Infinity War',
    description:
    %{
      The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.
    }.squish,
    released_on: "2018-04-27",
    rating: 'PG-13',
    total_gross: 2_048_359_754,
    director: 'Anthony Russo',
    duration: '149 min',
    image_file_name: 'avengers-infinity-war.png'
  },
  {
    title: 'Green Lantern',
    description:
    %{
      Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.
    }.squish,
    released_on: "2011-06-17",
    rating: 'PG-13',
    total_gross: 219_851_172,
    director: 'Martin Campbell',
    duration: '114 min',
    image_file_name: 'green-lantern.png'
  },
  {
    title: 'Fantastic Four',
    description:
    %{
      Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking ways. The four must learn to harness their new abilities and work together to save Earth from a former friend turned enemy.
    }.squish,
    released_on: "2015-08-07",
    rating: 'PG-13',
    total_gross: 168_257_860,
    director: 'Josh Trank',
    duration: '100 min',
    image_file_name: 'fantastic-four.png'
  },
  {
    title: 'Iron Man',
    description:
    %{
      When wealthy industrialist Tony Stark is forced to build an
      armored suit after a life-threatening incident, he ultimately
      decides to use its technology to fight against evil.
    }.squish,
    released_on: "2008-05-02",
    rating: 'PG-13',
    total_gross: 585_366_247,
    director: 'Jon Favreau',
    duration: '126 min',
    image_file_name: 'ironman.png'
  },
  {
    title: 'Superman',
    description:
    %{
      An alien orphan is sent from his dying planet to Earth, where
      he grows up to become his adoptive home's first and greatest
      super-hero.
    }.squish,
    released_on: "1978-12-15",
    rating: 'PG',
    total_gross: 300_451_603,
    director: 'Richard Donner',
    duration: '143 min',
    image_file_name: 'superman.png'
  },
  {
    title: 'Spider-Man',
    description:
    %{
      When bitten by a genetically modified spider, a nerdy, shy, and
      awkward high school student gains spider-like abilities that he
      eventually must use to fight evil as a superhero after tragedy
      befalls his family.
    }.squish,
    released_on: "2002-05-03",
    rating: 'PG-13',
    total_gross: 825_025_036,
    director: 'Sam Raimi',
    duration: '121 min',
    image_file_name: 'spiderman.png'
  },
  {
    title: 'Batman',
    description:
    %{
      The Dark Knight of Gotham City begins his war on crime with his
      first major enemy being the clownishly homicidal Joker.
    }.squish,
    released_on: "1989-06-23",
    rating: 'PG-13',
    total_gross: 411_348_924,
    director: 'Tim Burton',
    duration: '126 min',
    image_file_name: 'batman.png'
  },
  {
    title: "Catwoman",
    description:
    %{
      Patience Philips seems destined to spend her life apologizing for taking up space. Despite her artistic ability she has a more than respectable career as a graphic designer.
    }.squish,
    released_on: "2004-07-23",
    rating: "PG-13",
    total_gross: 82_102_379,
    director: "Jean-Christophe 'Pitof' Comar",
    duration: "101 min",
    image_file_name: "catwoman.png"
  },
  {
    title: "Wonder Woman",
    description:
    %{
      When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.
    }.squish,
    released_on: "2017-06-02",
    rating: "PG-13",
    total_gross: 821_847_012,
    director: "Patty Jenkins",
    duration: "141 min",
    image_file_name: "wonder-woman.png"
  }
])

Review.create!([
  {
    name: 'Peyton Owens',
    stars: rand(1..5),
    comment: 'A thrilling experience from start to finish!',
    movie_id: 12
  },
  {
    name: 'Jane Smith',
    stars: rand(1..5),
    comment: 'An absolute masterpiece of modern cinema.',
    movie_id: 12
  },
  {
    name: 'Alex Johnson',
    stars: rand(1..5),
    comment: 'Good movie, but the ending was a bit predictable.',
    movie_id: 3
  },
  {
    name: 'Emily Davis',
    stars: rand(1..5),
    comment: 'Fantastic visuals and great action sequences.',
    movie_id: 3
  },
  {
    name: 'Michael Brown',
    stars: rand(1..5),
    comment: 'The plot was interesting but lacked depth.',
    movie_id: 4
  },
  {
    name: 'Sarah Wilson',
    stars: rand(1..5),
    comment: 'Incredible performances by the cast. Highly recommend!',
    movie_id: 4
  },
  {
    name: 'David Lee',
    stars: rand(1..5),
    comment: 'Not as engaging as I hoped, but still worth watching.',
    movie_id: 5
  },
  {
    name: 'Jessica Taylor',
    stars: rand(1..5),
    comment: 'A great film with a lot of heart and excitement.',
    movie_id: 5
  },
  {
    name: 'Daniel Martinez',
    stars: rand(1..5),
    comment: 'The special effects were top-notch, but the story fell flat.',
    movie_id: 7
  },
  {
    name: 'Laura Anderson',
    stars: rand(1..5),
    comment: 'A fantastic addition to the genre, filled with twists and turns.',
    movie_id: 7
  },
  {
    name: 'James Wilson',
    stars: rand(1..5),
    comment: 'An enjoyable movie, though it had some pacing issues.',
    movie_id: 12
  },
  {
    name: 'Natalie Roberts',
    stars: rand(1..5),
    comment: 'A visual spectacle that doesn’t disappoint.',
    movie_id: 1
  },
  {
    name: 'Christopher Clark',
    stars: rand(1..5),
    comment: 'The character development was lacking, but the action was solid.',
    movie_id: 1
  },
  {
    name: 'Olivia Lewis',
    stars: rand(1..5),
    comment: 'A wonderful movie experience that I would watch again.',
    movie_id: 5
  },
  {
    name: 'Ryan Walker',
    stars: rand(1..5),
    comment: 'Entertaining, though some parts felt rushed.',
    movie_id: 5
  },
  {
    name: 'Sophia Hall',
    stars: rand(1..5),
    comment: 'An engaging story with a compelling lead performance.',
    movie_id: 6
  },
  {
    name: 'Matthew Young',
    stars: rand(1..5),
    comment: 'Enjoyable film with some standout moments.',
    movie_id: 6
  },
  {
    name: 'Ava King',
    stars: rand(1..5),
    comment: 'A solid entry in the genre with a memorable soundtrack.',
    movie_id: 8
  },
  {
    name: 'Ethan Wright',
    stars: rand(1..5),
    comment: 'The film was good but had some predictable elements.',
    movie_id: 8
  },
  {
    name: 'Mia Scott',
    stars: rand(1..5),
    comment: 'A well-crafted film with great action sequences.',
    movie_id: 9
  },
  {
    name: 'Noah Adams',
    stars: rand(1..5),
    comment: 'Visually stunning but lacked a strong storyline.',
    movie_id: 9
  },
  {
    name: 'Isabella Carter',
    stars: rand(1..5),
    comment: 'An enjoyable film with a few memorable scenes.',
    movie_id: 9
  },
  {
    name: 'Liam Green',
    stars: rand(1..5),
    comment: 'A great movie that’s fun from start to finish.',
    movie_id: 10
  },
  {
  name: 'Peyton Owens',
  stars: 3,
  comment: 'A great movie that’s fun from start to finish.',
  movie_id: 10
}
])

# u = user.new
#   name: "Leia"
#   email: "leiafreeman1414@gmail.com"
#   password: "leiaFreeman14!")
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# ])
