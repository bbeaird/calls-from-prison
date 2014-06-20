require 'rubygems'
require 'sinatra'
require 'twilio-ruby'

get '/' do
  "Hello world!"
end

post '/receive-call-from-prankster' do
  Twilio::TwiML::Response.new do |r|
    r.Say "Greetings! Let's tell family or a friend that you're in jail. Please enter the recipient's phone number"
  end.text
end
