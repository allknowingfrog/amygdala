require_relative "amygdala/version"
require_relative "amygdala/server"

module Amygdala
  class Error < StandardError; end

  class << self
    def configs
      {
        "apiversion" => "1",
        "author" => "amygdala",
        "color" => "0x000000",
        "head" => "default",
        "tail" => "default",
        "version" => "0.1"
      }.merge(@configs || {})
    end

    def set_configs(configs)
      @configs = configs
    end

    def set_move_handler(handler)
      @move_handler = handler
    end

    def move(data)
      move_handler.call(data)
    end

    private

    def move_handler
      @move_handler || proc { "up" }
    end
  end
end
