# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

people = Person.create([
  { first_name: 'Luke', last_name: "Skywalker", email: "luke@tatooine.com", birthdate: "1990-05-24", job: "Jedi" },
  { first_name: 'Han', last_name: "Solo", email: "han@corellia.com", birthdate: "1986-6-10", job: "Smuggler" },
  { first_name: 'Anakin', last_name: "Skywalker", email: "anakin@tatooine.com", birthdate: "1950-03-12", job: "Sith Lord" },
  { first_name: 'Leia', last_name: "Organa", email: "leia@alderaan.com", birthdate: "1990-05-24", job: "Alderaan Princess" },
  { first_name: 'Chewbacca', last_name: "Wookie", email: "chewbacca@kashyyyk.com", birthdate: "1889-8-30", job: "Smuggler" },
  { first_name: 'Obi-Wan', last_name: "Kenobi", email: "obiwan@stewjon.com", birthdate: "1947-12-2", job: "Jedi" },
  { first_name: 'Yoda', last_name: "Minch", email: "yoda@dagobah.com", birthdate: "1780-8-18", job: "Jedi" },
  { first_name: 'Jabba', last_name: "Tiure", email: "jabba@nalhutta.com", birthdate: "1867-05-24", job: "Gangster" },
  { first_name: 'Lando', last_name: "Calrissian", email: "lando@socorro.com", birthdate: "1980-03-12", job: "Smuggler" },
  { first_name: 'Palpatine', last_name: "Sheev", email: "palpatine@naboo.com", birthdate: "1920-07-01", job: "Sith Lord" },
  { first_name: 'Boba', last_name: "Fett", email: "boba@kamino.com", birthdate: "1980-01-12", job: "Bounty Hunter" },
  { first_name: 'R2', last_name: "D2", email: "r2d2@naboo.com", birthdate: "1995-04-05", job: "Astromech Droid" },
  { first_name: 'C', last_name: "3PO", email: "c3po@tatooine.com", birthdate: "2000-06-01", job: "Protocol Droid" },
  { first_name: 'Biggs', last_name: "Darklighter", email: "biggs@tatooine.com", birthdate: "1978-09-11", job: "X-Wing Pilot" },
  { first_name: 'Wedge', last_name: "Antilles", email: "wedge@corellia.com", birthdate: "1986-10-12", job: "X-Wing Pilot" },
  { first_name: 'Wilhuff', last_name: "Tarkin", email: "wilfuff@eriadu.com", birthdate: "1940-03-24", job: "Death Star Captain" },
  { first_name: 'Jar Jar', last_name: "Binks", email: "jarjar@naboo.com", birthdate: "1990-09-10", job: "Gungan Scout" },
  { first_name: 'Darth', last_name: "Maul", email: "darthmaul@dathomir.com", birthdate: "1984-01-11", job: "Sith Apprentice" },
  { first_name: 'Qui-Gon', last_name: "Jinn", email: "quigon@jediorder.com", birthdate: "1979-02-20", job: "Jedi" },
  { first_name: 'Jango', last_name: "Fett", email: "jango@kamino.com", birthdate: "1968-02-27", job: "Bounty Hunter" }
])