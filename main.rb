require 'pry'
require './game'
require './player'
require './turn_manager'
require './turn'

game = Game.new

puts 'Welcome to the Math game!'

# game.play

puts 'Thanks for playing!'

binding.pry

pp Players
