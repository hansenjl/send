class SendIt::Person
  attr_accessor :name, :age, :height, :location, :profession

  def initialize(attributes)
    #each key is a method name
    #each value is the argument for that method
    attributes.each do |key, value|
      self.send("#{key}=",value)
    end
  end


  def tell_joke
    puts "Q. How did the programmer die in the shower?"
    sleep(3)
    puts"A. He read the shampoo bottle instructions: Lather. Rinse. Repeat."
  end


  def year_born
    year = 2019 - @age.to_i
    puts "You were either born in #{year} or #{year-1}"
  end


  def display_bio
    puts "Your name is #{@name} "
    puts "Your age is #{@age}"
    puts "Your height is #{@height}"
    puts "Your location is #{@location}"
    puts "Your profession is #{@profession}"
  end


end