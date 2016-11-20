require_relative '../lib/fakename_wrapper'

male_person = FakenameWrapper::Scraper.new(gender: :male).parse
female_person = FakenameWrapper::Scraper.new(gender: :female).parse

puts "---> FakenameWrapper Gem\n\n"

puts "Male person name: #{male_person.name}"
puts "Female person name: #{female_person.name}"
