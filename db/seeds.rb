# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    # content:  'Buzzy destination for Indian street food in Bombay-style vintage decor.',
    category: 'japanese',
    # rating:        5
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    # content:  'Pizzeria with industrial looks, serving rustic pizza and antipasti.',
    category: 'italian',
    # rating:        4
  },
  {
    name:         'Casa di Mama',
    address:      'Estrada da Luz',
    # content:  'Apesar do nome, o resturnate é português.',
    category: 'belgian',
    # rating:        5
  },
  {
    name:         'Casa di Papa',
    address:      'Rua do Benfica',
    # content:  'Pasta specialties.',
    category: 'french',
    # rating:        5
  },
  {
    name:         'Treestory',
    address:      'Rua da Vila',
    # content:  'Georgian restaurant.',
    category: 'italian',
    # rating:        2
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
