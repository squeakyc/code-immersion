class Team
  attr_reader :name, :rank
  #defines methods that retruns the instance variables outside of the class
    # remember, att_reader is short for:
        # def name
        #   @name
        # end
        # def rank
        #   @rank
        # end
  def initialize(name, rank)
    @name = name # The @name instance variable stays with the object it's whole life. The (name, rank) disappears after the method.
    @rank = rank
  end

end

teams_array = []
completion = false

puts
puts "WELCOME TO MY TOURNAMENT GENERATOR."
loop do #this is the simplest type of loop - you just have to call break at some point to break this loop

  puts "Enter a selection (number only):"
  puts "1. Enter teams"
  puts "2. List teams"
  puts "3. List matchups"
  puts "0. Exit program"
  puts

  menu_selection = gets[0]

  case menu_selection
  when '0' then break #since the gets got a string value, you need a string value here ('0'). You could also gets.to_i and use an integer here
  when '1'
    while completion == false
      puts
      print "PLEASE ENTER THE NAME OF A TEAM TO ADD TO THE TOURNAMENT: "
      name = gets.chomp
      if name == "done"
        completion = true
        break
      end
      team = Team.new(name, teams_array.length + 1)
      teams_array.push(team)
      # The following line is the same as the previous 2 lines all in one:
          #teams_array.push(Team.new(name, teams_array.length +1))
    end
  when '2'
    puts
    puts "TEAM LIST:"
    teams_array.each do |team|
      puts "#{team.rank}. #{team.name}"
    end
    puts
    # The following is the same as above, and preferred if all the code is on 1 line:
    # then teams_array.each { |team| puts "#{team.rank}. #{team.name}" }
    # Only use "then" when it's a 1-liner. If using the 2nd 2-liner way, don't use "then" like in when '1' above
  when '3'
    puts
    puts "MATCHUPS:"
    teams_array_copy = teams_array.dup #since after listing matchups, it won't be able to do it again because you've shifted and popped all the teams out, create a copy of the array to destroy instead using .dup and pointing a new variable at it
    if teams_array_copy.length.odd?
      top_team = teams_array_copy.shift
      puts "(#{top_team.rank}) #{top_team.name} has a bye."
    end
    until teams_array_copy.empty?
      high_rank = teams_array_copy.shift
      low_rank = teams_array_copy.pop
      puts "(#{high_rank.rank}) #{high_rank.name} versus (#{low_rank.rank}) #{low_rank.name}"
    end
  else
    puts "INVALID COMMAND."
  end # end of case statement
end # end of loop do

puts
puts "Goodbye."
puts
