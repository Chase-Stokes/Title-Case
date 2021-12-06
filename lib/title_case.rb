#!/usr/bin/ruby
require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require 'pry'

def title_case(sentence)
  split_sentence = sentence.split()
  split_sentence.each() do |word|
    word.capitalize!()
  end
  split_sentence.join(" ")
end

puts 'Enter words to be capitalized'
user_input = gets.chomp
puts title_case(user_input)
