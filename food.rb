# food class, name, price
require "pry"
class Food
    # attr_writer :name
    # attr_reader :name
    attr_accessor :name, :price

    # class << self
    #     attr_reader :all
    #     def all
    #         @@all
    #     end
    # end

    @@all = []

    # initialize - private method
    def initialize(name, price = 0)
        # some code
        @name = name
        @price = price

        @@all << self
    end

    # setter method / writer
    # def name=(arg)
    #     @name = arg
    # end

    # getter method / reader
    def name
        @name
    end

    def self.all
        @@all
    end

    
end




class Person
    attr_accessor :name
    attr_reader :dob, :bank_account
    # attr_writer :password


    def initialize(name = "Undecided")
        @name = name
        @dob = Time.now
    end

    def password=(pass)
        @password_digest = encrypt_string(pass)
    end

    def my_method
        puts "hi"
    end

    def my_method
        puts "hello"
    end
end

binding.pry