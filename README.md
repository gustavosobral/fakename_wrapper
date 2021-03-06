# FakenameWrapper

[![Build Status](https://travis-ci.org/gustavosobral/fakename_wrapper.svg?branch=master)](https://travis-ci.org/gustavosobral/fakename_wrapper)
[![Coverage Status](https://coveralls.io/repos/github/gustavosobral/fakename_wrapper/badge.svg?branch=master)](https://coveralls.io/github/gustavosobral/fakename_wrapper?branch=master)

This gem aims to be a simple data generator, providing specific generated data by countries for multiple purposes (Tests, database seeds and etc).

Currently, is a simple wrapper based on http://www.fakenamegenerator.com/ service. Can be expanded to other fonts and services later.

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

Check the `examples` folder to see executables Ruby code using the FakenameWrapper gem.

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
|   country  |     :br, :us    | :br |
|   name_set  |     :br, :us    | :br |

### Example

```ruby
# Initialize the Scraper with no params for use the defaults 
person = FakenameWrapper::Scraper.new.parse

# Or pass one or more available param to configure the desired data
person = FakenameWrapper::Scraper.new(gender: :female, country: :br, name_set: :br).parse
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

### To-do

* Allow to use cached option;
* Use VCR gem for specs;
* Expand to other fonts and services;

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gustavosobral/fakename_wrapper.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
