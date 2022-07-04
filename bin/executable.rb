#!/usr/bin/env ruby
require_relative "../config/environment"


# puts     Scraper.new.get_from_api

var_1 = Cli.new

def cli_loop(var_1)

    while(true)
        break if (var_1.input_2 == 'n' || var_1.input_2 =='N')
        var_1.ask_after_facts  
        end


end  

cli_loop(var_1)



# def coverter(song_name)
#     song_name.gsub(" ","-")
# end


