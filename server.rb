#! /usr/bin/ruby
require 'rubygems'
require 'sinatra'
require 'soap/defaultDriver'

# $stdout.sync = true
WAIT_TIME = 2
AURA_ENDPOINT = "http://localhost:8000/SOAP"
aura = SOAPServerPort.new(AURA_ENDPOINT)
aura.startQASession(nil);

post "/answers" do
  aura.resetQASession(nil);

  wait

  aura.askQuestion(params[:question], nil, nil, nil)
  answer = aura.answerQuestion(nil)

  content_type 'application/html', :charset => 'utf-8'
  answer.first
end

get "*" do
  puts "#{params[:splat]} 404 not found"
  pass
end

def wait
  return if WAIT_TIME == 0
  puts "waiting"
  WAIT_TIME.times do
    print "."
    sleep 1
  end
  puts "replying"
end
