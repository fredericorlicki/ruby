class Computer
    attr_accessor :brand, :model, :memory_capacity, :price 
	
	def initialize(brand, model, memory)
		@brand = brand
		@model = model
		@memory_capacity = memory
	end

	def to_s
	  "you choosed a #{@brand} #{@model} with #{@memory_capacity}Go memory_capacity. Its price is #{@price} $"
	end
end

apple = Computer.new("apple","macbook",128)
compac = Computer.new("Compac", "Laptop", 256)
apple.price = 1299
compac.price = 999

puts apple