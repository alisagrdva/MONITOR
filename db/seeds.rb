# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Topic.create([
  {
    title: 'Фестивали'
  }, {
    title: 'Концерты'
  }, {
    title: 'Выставки'
  }, {
    title: 'Лекции'
  }, {
    title: 'Вечеринки'
  }, {
    title: 'Релизы'
  }, {
    title: 'Воркшопы'
  }
])

Event.create([
  {
    title: 'Signal',
    teaser: '4 дня — 4 арены. Простой план побега из наэлектризованного стрессом мегаполиса лег в основу экосистемы с годовым жизненным циклом и многотысячным комьюнити.',
    date: '2020-03-04',
    time: '2000-01-01 01:00:00 UTC',
    place: 'Никола-Ленивец',
    link: 'signal.live'
  }, {
    title: 'Форма',
    teaser: 'Восьмой фестиваль современного искусства ФОРМА впервые в двухдневном формате! В этом году ФОРМА гарантирует тотальное смешение форм.',
    date: '2020-03-04',
    time: '2000-01-01 01:00:00 UTC',
    place: 'Хлебозавод',
    link: 'formafestival.ru'
  }, {
    title: 'Motherland Summer',
    teaser: 'Motherland Summer — один из крупнейших ежегодных фестивалей под открытым небом, посвященный новой отечественной музыке. Опен-эйр пройдёт в Москве 20-го июня на территории Main Stage. Традиционно — четыре сцены и более тридцати групп! Никаких жанровых ограничений.',
    date: '2020-03-04',
    time: '2000-01-01 01:00:00 UTC',
    place: 'MAIN STAGE',
    link: 'motherland.ru'
  }, {
    title: 'Synthposium 5',
    teaser: 'Synthposium 5 — пятый, разросшийся до пяти дней международный фестиваль изобретательной музыки и музыкальных изобретений. ',
    date: '2020-03-04',
    time: '2000-01-01 01:00:00 UTC',
    place: 'Электротеатр Станиславский',
    link: 'synthposium.com'
  }
])

Event.create([
  {
    title: 'Signal',
    teaser: '4 дня — 4 арены. Простой план побега из наэлектризованного стрессом мегаполиса лег в основу экосистемы с годовым жизненным циклом и многотысячным комьюнити.',
    date: '2020-03-04',
    time: '2000-01-01 01:00:00 UTC',
    place: 'Никола-Ленивец',
    link: 'signal.live'
  }, {
    title: 'Форма',
    teaser: 'Восьмой фестиваль современного искусства ФОРМА впервые в двухдневном формате! В этом году ФОРМА гарантирует тотальное смешение форм.',
    date: '2020-03-04',
    time: '2000-01-01 01:00:00 UTC',
    place: 'Хлебозавод',
    link: 'formafestival.ru'
  }, {
    title: 'Motherland Summer',
    teaser: 'Motherland Summer — один из крупнейших ежегодных фестивалей под открытым небом, посвященный новой отечественной музыке. Опен-эйр пройдёт в Москве 20-го июня на территории Main Stage. Традиционно — четыре сцены и более тридцати групп! Никаких жанровых ограничений.',
    date: '2020-03-04',
    time: '2000-01-01 01:00:00 UTC',
    place: 'MAIN STAGE',
    link: 'motherland.ru'
  }, {
    title: 'Synthposium 5',
    teaser: 'Synthposium 5 — пятый, разросшийся до пяти дней международный фестиваль изобретательной музыки и музыкальных изобретений. ',
    date: '2020-03-04',
    time: '2000-01-01 01:00:00 UTC',
    place: 'Электротеатр Станиславский',
    link: 'synthposium.com'
  }
])
