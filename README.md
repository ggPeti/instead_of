# InsteadOf

An utterly simple gem to replace specific values with other values.

## Installation

Add this line to your application's Gemfile:

    gem 'instead_of'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install instead_of

## Usage

```ruby
require 'instead_of'

(2 + 2).but("abc".instead_of(3) # 4 is unchanged
(2 + 2).but(4.instead_of(3), 5.instead_of(4)) # 4 replaced with 5
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
