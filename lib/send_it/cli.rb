class SendIt::CLI

  def start
    puts "Welcome!"
    @person = create_person
    puts "Hello #{@person.name}"
    method_choice
  end

  def create_person
    attributes = {}
    puts "What's your name?"
    attributes[:name] = gets.strip

    puts "What's your age?"
    attributes[:age] = gets.strip

    puts "What's your height?"
    attributes[:height] = gets.strip

    puts "What's your location?"
    attributes[:location] = gets.strip

    puts "What's your profession?"
    attributes[:profession] = gets.strip

    SendIt::Person.new(attributes)
  end

  def method_choice
    puts "\nWhat method would you like to use?"
    puts "display_bio"
    puts "year_born"
    puts "tell_joke"
    puts "type in your choice:"
    puts "or type 'exit' to exit\n"

    input = gets.strip

    #This checks to make sure the user typed in a real method name
    # @person.methods lists them as symbols
    if @person.methods.include?(input.to_sym)
       @person.send(input)
       method_choice
    elsif input == "exit"
      puts "goodbye"
    else
       puts "Sorry I didn't understand the method you chose"
       puts "Please try again"
       method_choice
     end

  end

end