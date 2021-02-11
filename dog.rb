require "pry"
class Dog
    # class variable - leaky inheritance
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
end

class Chihuahua < Dog
    # class instance variable - not inherited
    @all = []

    def initialize
        self.class.all << self
        @@all << self
    end

    def self.all
        @all
    end
end

class Lab < Dog
    ALL = [] # not inherited

    def initialize
        ALL << self
        @@all << self
    end

    def self.all
        ALL
    end
end

class GSD < Dog
    @all = []

    def initialize
        self.class.all << self
        @@all << self
    end

    def self.all
        @all
    end
end


Dog.new
Lab.new
Chihuahua.new
GSD.new
GSD.new

binding.pry