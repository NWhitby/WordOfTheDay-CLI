# WordOfTheDay

WordOfTheDay is written in Ruby, uses Nokogiri and Open-Uri to implement a CLI, that provides the word of the day via Merriam-Webster's [Word of the Day](https://www.merriam-webster.com/word-of-the-day) website. After receiving the word of the day, the user can make choices from the command line to display associated information. 

## Installation

WordofTheDay is currently an unpublished gem. Once published, follow the "gem installation" instructions below. 

## To execute:

```clone``` the repository, ```cd``` into the projects directory, and run ```ruby bin/word_of_the_day```

## Gem Installation
Add this line to your application's Gemfile:

```
gem 'word_of_the_day'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install word_of_the_day


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

In the interest of embracing the open source community, contributions are greatly appreciated! Ideas, changes, corrections, and additional features are encouraged! Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/word_of_the_day.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
