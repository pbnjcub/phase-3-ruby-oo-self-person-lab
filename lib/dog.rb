require 'pry'

class Dog
    attr_accessor :name, :age, :image_url, :breed, :last_fed_at, :last_walk_at

    def initialize(attributes={})
        #mass assignment
        attributes.each do |key, value|
            self.send("#{key}=", value)
        end
        # @name = name
        # @age = age
        # @breed = breed
        # @image_url = image_url
    end

    def name
        @name
    end

    def name=(value)
        @name = value
    end

    def print
        puts
        puts self.name
        puts "   Age: #{self.age}"
        puts "   Breed: #{self.breed}"
        puts "   Image_url: #{self.image_url}"
    end
end

dog = Dog.new({name:"Dorian", age:3, breed:"Black Lab", image_url:"https://images.unsplash.com/photo-1602941953280-ea523175bcfc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjBsYWJyYWRvcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",last_fed_at:"3:00 pm", last_walk_at:"4:00pm"})
dog2 = Dog.new({name:"Smores", age:5, breed:"Shiba Inu", image_url:"https://images.unsplash.com/photo-1578133507770-a35cc3c786e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"})

binding.pry