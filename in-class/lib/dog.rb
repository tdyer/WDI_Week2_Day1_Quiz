puts "Im loading the dog class"

class Dog
  attr_accessor :name, :description
  
  def initialize(dog_name, dog_description)
    @name = dog_name
    @description = dog_description
  end

  def speak(phrase)
    dog_speak = "Woof #{phrase}"
    puts dog_speak
    # %x{ say dog_speak }
  end

end # end class

