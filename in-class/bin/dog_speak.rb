# require './lib/dog' # Only works in top level directory
require_relative '../lib/dog' # Works anywhere!!

dog = GA::Dog.new("scooter", "Yappy little white dog")
dog.speak("I'm an annoying little twit of a dog")

# 
# puts $LOAD_PATH
# puts $:

