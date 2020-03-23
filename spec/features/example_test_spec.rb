require 'spec_helper'

RSpec.describe "Example test" do
  it "Root should return an example message" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq("Hello World!")
  end
  it "Users should return users message" do
    get '/users'
    expect(last_response).to be_ok
    expect(last_response.body).to eq("in users")
  end
end
