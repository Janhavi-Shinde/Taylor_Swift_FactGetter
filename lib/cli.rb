require_relative "./scraper.rb"
class Cli
    attr_accessor :input_2
@@scraper
    def initialize
        @@scraper = Scraper.new
        @@scraper.scrape_fandom
        Scraper.titler
        
        welcome
        get_fact
        
        # puts scraper.converter('end game') ==> is returning: end-game 
    end
    
    def get_fact
        input = gets.chomp.to_i
        @@scraper.scrape_facts(Scraper.title[input - 1])
        input = nil
    end

    def list_of_songs
        Scraper.title.each.with_index(1) do |song, index|
            puts " #{index}. #{song}"
        end
    end

    def welcome
        puts " "
        puts "      ***************************"
        puts "      Welcome to the CLI App!"
        puts "      Please select a number between 1-16, to find out fun facts about that song"
        puts " "
        puts "      ***************************"
         puts " "
        list_of_songs
    end

    def ask_after_facts
        puts "          ************************"
        puts "Would you like to pick another song? Enter either y or n"
        @input_2 = gets.chomp
        if @input_2 == 'y' || @input_2 == 'Y'
            list_of_songs
            get_fact
        elsif @input_2 == 'n' || @input_2 == 'N'
            nil
        end

    end

    def input_2
        @input_2
    end
end

