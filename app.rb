require 'bundler'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'

# users
julie = User.new("emailjulie", 22)
julien = User.new("email2", 32)
julienne = User.new("emailf52", 34)
julian = User.new("email4", 35)
julio = User.new("email20", 38)

# events
dentist = Event.new("dentist","2024-04-15 16:45", 20)
dentist2 = Event.new("dentist2","2023-11-11 14:00", 25)
coiffeur = Event.new("coiffeur", "2024-12-02", 30)
pointquo = Event.new("standup quotidien", "2019-01-13 09:00", 10, ["truc@machin.com", "bidule@chose.fr"])

binding.pry
