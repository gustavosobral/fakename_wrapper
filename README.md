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
person = FakenameWrapper::Scraper.new(gender: :male, country: :br, name_set: :br).parse
person.name
person.cpf
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fakename_wrapper.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

