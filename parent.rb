# name
require "pry"
class Parent
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def have_child(child_name)
        child = Child.new(child_name)
        child.parent = self
    end

    def children
        binding.pry
        Child.all.select { |child| child.parent == self }
    end

    def self.all
        @@all
    end
end

# parent, name, dob, allergies
class Child
    attr_accessor :parent, :name
    attr_reader :dob

    @@all = []

    def initialize(name)
        @name = name
        @dob = Time.now
        @allergies = []
        @@all << self
    end

    def self.all
        @@all
    end
end

laura = Parent.new("Laura")
bob = Parent.new("Bob")
elias = Parent.new("Elias")
laura.have_child("Hannah")
laura.have_child("Jitta")
laura.have_child("Joe")
bob.have_child("Molly")
elias.have_child("Joe")

binding.pry