require_relative '../lib/fakename_wrapper'

puts "---> FakenameWrapper Gem\n\n"

puts "---> Define gender"
male_person = FakenameWrapper::Scraper.new(gender: :male).parse
female_person = FakenameWrapper::Scraper.new(gender: :female).parse

puts "Male person name: #{male_person.name}"
puts "Female person name: #{female_person.name}"

puts "\n\n---> Define country"
us_person = FakenameWrapper::Scraper.new(country: :us, name_set: :us).parse

puts "US person name: #{us_person.name}"
puts "US Person SSN: #{us_person.ssn}"
puts "US person full address: #{us_person.full_address}"
