require "travel_destinations/version"

module TravelDestinations
  class Error < StandardError; end
  # Your code goes here...
end

# environment file

require 'nokogiri'
require 'pry'
require 'open-uri'

require_relative './travel_destinations/version'
require_relative './travel_destinations/cli'
require_relative './travel_destinations/destination.rb'
