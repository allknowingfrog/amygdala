require "sinatra/base"
require "json"

module Amygdala
  class Server < Sinatra::Base
    enable :logging

    set :default_content_type, :json

    get "/" do
      Amygdala.configs.to_json
    end

    post "/start" do
      {}.to_json
    end

    post "/move" do
      data = JSON.parse(request.body.read)

      {
        move: Amygdala.move(data)
      }.to_json
    end

    post "/end" do
      {}.to_json
    end
  end
end
