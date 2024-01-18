require_relative 'pokemon'
require_relative 'pikachu'

pikachu = Pikachu.new('ピカチュウ', 'かみなり', '', 80)
puts pikachu.name
puts pikachu.type1
pikachu.attack
pikachu.changname('うんこ')

