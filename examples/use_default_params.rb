require_relative '../lib/fakename_wrapper'

person = FakenameWrapper::Scraper.new.parse

puts "---> FakenameWrapper Gem\n\n"

puts "Person name: #{person.name}"
puts "Person SSN: #{person.ssn}"
puts "Person full address: #{person.full_address}"
puts "Person phone: #{person.phone}"
