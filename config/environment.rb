#require (gems)
#require_relative (any other files)

require "open-uri"
require "nokogiri"
require "pry"
require_relative "../lib/scraper"
require_relative "../lib/cli"

require 'net/http'
require 'json'


# make a gemfile when you're ready to bundle your app into a gem