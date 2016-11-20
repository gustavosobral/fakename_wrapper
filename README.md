# FakenameWrapper

A simple wrapper to generate User specific data based on http://www.fakenamegenerator.com/ service

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fakename_wrapper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fakename_wrapper

## Usage

```ruby
# Initialize the Scraper
person = FakenameWrapper::Scraper.new.parse

# Access the data
person.name
person.ssn
person.location
person.full_address
person.phone
```

Full available data/methods for a retrieved `FakenameWrapper::Person`

| Method |          Description          |
|:------:|:---------------------:|
|   name  |     The person full name    |
|   ssn  |     The person SSN (Or CPF for Brazilians)    |
|   street  |     The person street    |
|   location  |     The person location, city and state    |
|   zip  |     The person zip code    |
|   full_address  |     The person full address, including street, location and zip code    |
|   phone  |     The person phone    |

## Configuration

Constructor params

| Param |          Available          |         Default         |
|:------:|:---------------------:|:---------------------------:|
|   gender  |     :random, :male, :female    | :random |
|   country  |     :br    | :br |
|   name_set  |     :br    | :br |

### Example

```ruby
# Initialize the Scraper with no params for use the defaults 
person = FakenameWrapper::Scraper.new.parse

# Or pass one or more available param to configure the desired data
person = FakenameWrapper::Scraper.new(gender: :female, country: :br, name_set: :br).parse
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fakename_wrapper.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
