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

### Constructor Params

| Param |          Available          |         Default         |
|:------:|:---------------------:|:---------------------------:|
|   gender  |     :random, :male, :female    | :random |
|   country  |     :br    | :br |
|   name_set  |     :br    | :br |

### Example

Configuration

```ruby
# Initialize the Scraper with no params for use the defaults 
person = FakenameWrapper::Scraper.new.parse

# Or pass the available params to configure the desired data
person = FakenameWrapper::Scraper.new(gender: female, country: br, name_set:br).parse
```

Bellow are the available methods for a retrieved person

```ruby
person.name
person.ssn
person.street
person.location
person.zip
person.full_address
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fakename_wrapper.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

