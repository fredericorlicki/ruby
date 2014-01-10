
=begin 
tout d'abord il s'agit de constituer un premier tableau composé de strings contenant le nom des plats.
puis constituer un second tableau contenant le nombre de calorie.
Il est essentiel de rentrer le nom des plats et le nombre de calories qui leur sont associé dans le meme ordre.
ensuite pour toute requete on peut faire correspondre leurs indices pour obtenir la paire plat/calories.
si Mc do lance un nouveau plat il suffira d'updater dans chacun des deux tableaux et toujours dans le meme ordre les nouvelles valeurs (filet o fish/calories).

=end

def menu(burger, side, drink)

 nos_burger = {
   "Cheese Burger" => 290,
   "Big Mac" => 300,
   "Mc Bacon" => 400,
   "Royal Cheese" => 130}

 nos_side = {
   "French fries" => 130,
   "Potatoes" => 130}

nos_drink = {
  "Coca" => 160,
  "Sprite" => 170}

somcal = nos_burger[burger] + nos_side[side] + nos_drink [drink]
puts "Bravo Bouli! En commandant #{burger} #{side} #{drink} vous avez ingurgité #{somcal} calories"
end

puts "quel est votre burger?"
 burgers=gets.chomp
 puts "quel est votre accompagnement?"
 sides=gets.chomp
 puts "quelle est votre boisson?"
drinks=gets.chomp
 
 menu(burgers, sides, drinks)











