class Person
  def initialize(name)
    @name = name # Line 3
  end
end

class Engineer < Person
  def initialize(name, field)
    @name = name
    @field = field
  end

  def go_to_work
    puts "Going to work as an engineer in #{field}..."
  end
end

elon_musk = Engineer.new('Elon Musk', 'space travel')

#Why is line 3 necessary? What happens without it? - to assign a name to an instance of a person, without it the person doesnt have this field
#Is Engineer a subclass or a superclass? - subclass
#What will running Engineer.go_to_work do? Why? error - need @field
#What is elon_musk? Choose all that apply:
  #A class -no
  #A method -no
  #An instance -yes
  #An object -yes
  #A variable -yes