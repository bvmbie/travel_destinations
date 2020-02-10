# CLI controller

class TravelDestinations::CLI

  def call
    list_destinations
    menu
    exit_program
  end

  def list_destinations
    # puts "The top 10 countries to visit in 2020:"
    # puts <<-DOC
    #   1. Bhutan
    #   2. England
    # DOC
    @destinations = TravelDestinations::Destination.all
    @destinations.each.with_index(1) do |destination, i|
      puts "#{i}. #{destination.name}"
    end    
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the destination number to see more information, enter list to see the list again, or type exit to quit"
      input = gets.strip.downcase

      if input.to_i > 0
        requested_destination = @destinations[input.to_i-1]
        puts "#{destination.name}"
        puts "#{destination.description}"
      elsif input == "list"
        list_destinations
      else 
        puts "Incorrect input"
      end
    end
  end