class OrangeTree 
  attr_reader :age

 	def initialize 
 	  @age = 0
 	  @orange_count = 0
    @height = 0
    @alive = true
	end

	def one_year_passes!
    @age += 1
    if @alive
      @alive = @age < (50 + rand(30))
      @height = @age * 10
      if @age > 10
        @orange_count = rand(20)
      end
      return true
    else
      @orange_count = 0
      return false
    end
	end

  def remove_an_orange!
    @orange_count -= 1
  end

	def count_the_oranges
    @orange_count
	end

	def measure_height
    @height
	end

  def alive?
    @alive
  end
end

def pick_an_orange(tree)
  if tree.count_the_oranges > 0
    tree.remove_an_orange!
    return true
  else
    return false
  end
end

orange_tree = OrangeTree.new

23.times do
  orange_tree.one_year_passes!
  puts "This year your tree grew to #{orange_tree.measure_height}cm tall, and produced #{orange_tree.count_the_oranges} oranges"
end

puts(orange_tree.one_year_passes!)
# => This year your tree grew to 9.6 m tall, and produced 119 oranges
puts("#{orange_tree.count_the_oranges} oranges")
# => 119 oranges
if pick_an_orange(orange_tree)
  puts("You pick a delicious juicy orange")
else
  puts("There is no more orqnges on this tree")
end
# => You pick a delicious juicy orange
puts("#{orange_tree.count_the_oranges} oranges")
# => 118 oranges
puts("#{orange_tree.measure_height}cm")
# => 9.6 m
orange_tree.one_year_passes!
puts "This year your tree grew to #{orange_tree.measure_height}cm tall, and produced #{orange_tree.count_the_oranges} oranges"
# => This year your tree grew to 10.0 m tall, and produced 125 oranges
orange_tree.one_year_passes!
puts "This year your tree grew to #{orange_tree.measure_height}cm tall, and produced #{orange_tree.count_the_oranges} oranges"
# => This year your tree grew to 10.4 m tall, and produced 131 oranges
while orange_tree.alive?
  orange_tree.one_year_passes!
  puts "This year your tree is #{orange_tree.age} grew to #{orange_tree.measure_height}cm tall, and produced #{orange_tree.count_the_oranges} oranges"
end
puts "Oh, no! The tree is too old, and has died.."

# => A year later, the tree is still dead..
orange_tree.one_year_passes!
puts("#{orange_tree.count_the_oranges} oranges")
# => A dead tree has no oranges..
if pick_an_orange(orange_tree)
  puts("You pick a delicious juicy orange")
else
  puts("A dead tree has nothing to offer..")
end
# => 