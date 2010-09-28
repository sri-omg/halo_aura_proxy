#! /usr/bin/ruby
require 'rubygems'
require 'sinatra'
require 'models/aura'

WAIT_TIME = 2
AURA_ENDPOINT = "http://localhost:8000/SOAP"

aura = Aura.instance

post "/answers" do
  aura.new_question

  wait

  content_type 'application/html', :charset => 'utf-8'
  aura.ask_question(params[:question])
  if aura.valid_question?
    status 200
    aura.answer_question
  else
    status 400
    aura.question_errors
  end
end

post "/suggested_questions_lists" do
  aura.suggested_questions_lists(params[:section], params[:text])
end

get "*" do
  puts "#{params[:splat]} 404 not found"
  pass
end

def wait
  return if WAIT_TIME == 0 || test?
  puts "waiting"
  WAIT_TIME.times do
    print "."
    sleep 1
  end
  puts "replying"
end
