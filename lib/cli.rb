require_relative "./scraper.rb"
class Cli

    def initialize
        scraper = Scraper.new
        scraper.scrape_fandom
        scraper.scrape_facts("gorgeous")
        welcome
        
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
        puts "      Please select a number between 1-15, to find out fun facts about that song"
        puts " "
        puts "      ***************************"
         puts " "
        list_of_songs
    end

end

