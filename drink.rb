require "pry"
class Drink
    attr_accessor :flavor, :hot_or_cold, :price
    # puts self #> Drink

    @@all = []

    def initialize(flavor, price = 5, hot_or_cold = "cold")
        @flavor, @price, @hot_or_cold = flavor, price, hot_or_cold

        # puts self #> instance object ex. #<Drink:0x00007fb244a026b8>

        @@all << self
    end

    def self.all #> self is equal to Drink
        # puts self #> Drink
        @@all
    end
end

Drink.new("coca-cola")
Drink.new("bubble tea", 5, "cold")
Drink.new("carmel macchiatto")

Drink.all

# puts self #> main
binding.pry