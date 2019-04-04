#CLI Controller

class WordOfTheDay::CLI

  def call
    @scraper = WordOfTheDay::Scraper.scrape_page   
    @word = WordOfTheDay::Word.all
    menu_choices
  end

  def display_menu
    puts ""
    puts "***************************************"
    puts ""
    puts "Hello! Welcome To Word of The Day!".colorize(:red)
    puts @word[@input.to_i - 1].date
    puts ""
    puts "Today's word is #{@word[@input.to_i - 1].name}."
    puts "" 
    puts "Select corresponding number for more information." 
    puts "" 
    puts "[1] Part of Speech"
    puts "[2] Pronunciation"
    puts "[3] Definition"
    puts "[4] Did You Know?"
    puts "[5] 1st Example"
    puts "[6] 2nd Example"
    puts "[7] Display Word"    
    puts ""    
    puts "***************************************"
  end

    def menu_choices
      display_menu
    
      @input = nil

    while @input != "exit" 
      puts"" 
      puts "Enter a number 1-7, menu, or exit." 

      @input = gets.strip
      
      if @input == "menu"
        display_menu
      elsif @input == "1"
        puts ""
        print "Part of Speech: ".colorize(:red)
        puts @word[@input.to_i - 1].part_of_speech    
      elsif @input == "2"
        puts ""
        print "Pronunciation: ".colorize(:red)
        puts @word[@input.to_i - 2].pronunciation
      elsif @input == "3"
        puts ""
        print "Definition".colorize(:red)
        puts @word[@input.to_i - 3].definition
      elsif @input == "4"
        puts ""
        print "Did You Know? ".colorize(:red)
        puts @word[@input.to_i - 4].did_you_know
      elsif @input == "5"
        puts ""
        print "1st Example: ".colorize(:red)
        puts @word[@input.to_i - 5].example_1
      elsif @input == "6"
        puts ""
        print "2nd Example: ".colorize(:red)
        puts @word[@input.to_i - 6].example_2
      elsif @input == "7"
        puts ""
        print "Today's Word: ".colorize(:red)
        puts @word[@input.to_i - 7].name
      elsif @input == "exit"
        goodbye
      else
        puts ""
        puts "Invalid Selection!".colorize(:red)
      end
    end
  end

  def goodbye
    puts ""
    puts "***************************************"
    puts ""
    puts "See you for tomorrow's word of the day!".colorize(:red)
    puts ""
    puts "***************************************"
    puts ""
  end

end