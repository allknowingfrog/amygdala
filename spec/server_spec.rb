require "rack/test"
require "json"

RSpec.describe Amygdala::Server do
  include Rack::Test::Methods

  def app
    Amygdala::Server
  end

  def response_data
    JSON.parse(last_response.body)
  end

  def post_json(uri, data)
    post(uri, JSON.generate(data), "CONTENT_TYPE" => "application/json")
  end

  it "has a root route" do
    get "/"
    expect(last_response).to be_ok
    expect(response_data.keys).to include("version")
  end

  it "generates moves" do
    post_json "/move", {}
    expect(last_response).to be_ok
    expect(response_data.keys).to include("move")
  end

  it "accepts start" do
    post_json "/start", {}
    expect(last_response).to be_ok
  end

  it "accepts end" do
    post_json "/end", {}
    expect(last_response).to be_ok
  end
end
