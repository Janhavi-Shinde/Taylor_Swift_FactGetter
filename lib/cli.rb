require_relative "./scraper.rb"
class Cli
    attr_accessor :input_2 
@@scraper
@@api_quote

    def initialize
        @@scraper = Scraper.new
        @@scraper.scrape_fandom
        # @@scraper.get_from_api ##storing random quote in Scraper class variables
        Scraper.titler
        
        welcome
        get_fact
        
        
        # puts scraper.converter('end game') ==> is returning: end-game 
    end
    
    def get_fact
    
        input = gets.chomp.to_i
        puts  "   "
        @@scraper.scrape_facts(Scraper.title[input - 1])
        
        input = nil
    end
    
    def get_api_fact
        @@scraper.scrape_facts(Scraper.api_song)

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
        puts ""
        puts "      From Taylor Swift API: "
        puts " "
        puts "      #{@@scraper.get_from_api}"
        puts " "
        puts "      "
        puts "      ***************************"
         puts " "
        list_of_songs
    end


    
    def ask_after_facts
        puts "          ************************"
        puts "Would you like to pick another song? Enter either y or n"
        puts "Want to know a fun fact about the randomly generated quote's song? Enter 'API'"
        @input_2 = gets.chomp
        if @input_2 == 'y' || @input_2 == 'Y'
            list_of_songs
            
            get_fact
        elsif @input_2 == 'n' || @input_2 == 'N'
            nil
        elsif @input_2 == 'API' || @input_2 == 'api'
            puts "  "
            puts "API lyric's fact:"
            get_api_fact
        end

    end

    def input_2
        @input_2
    end
end

