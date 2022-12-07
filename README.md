# Amygdala

A "Lizard Brain" for your Battlesnake

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'amygdala'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install amygdala

## Usage

Amygdala is a simple Sinatra application. To get up and running, create a Rack configuration file that sets a move handler and starts the server. This is a minimal `config.ru` file that will always respond with a move of "up".
```
# config.ru

require "amygdala"

class Player
  class << self
    def move(data)
      "up"
    end
  end
end

Amygdala.set_configs({
  author: "foo"
})

Amygdala.set_move_handler(Player.method(:move))

run Amygdala::Server
```

Now call `rackup config.ru` to launch a BattleSnake server.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/allknowingfrog/amygdala.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
