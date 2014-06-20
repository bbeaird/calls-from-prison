require 'rubygems'
require 'sinatra'
require 'twilio-ruby'

get '/' do
  "Hello world!"
end

get '/receive-call-from-prankster' do
  Twilio::TwiML::Response.new do |r|
    r.Gather numDigits: 10, action: 'receive-call-from-prankster/handle-gather', method: 'get' do |g|
      g.Say "Greetings! Let's tell family or a friend that you're in jail. Please enter the recipient's phone number"
    end
  end.text
end

get '/receive-call-from-prankster/handle-gather' do
  Twilio::TwiML::Response.new do |r|

  end
end
