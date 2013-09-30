module GA
  class Dog
    attr_accessor :name, :description
    
    def initialize(dog_name, dog_description)
      # NOTE: method params/args ore just like declaring variables that
      # are *local* to the method. locally scoped methods
      @name = dog_name
      @description = dog_description
    end

    def speak(phrase)
      dog_speak = "Woof #{phrase}"
      puts dog_speak
      # %x{ say dog_speak }
    end

  end # end class

end # end module
