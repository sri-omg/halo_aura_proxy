#! /usr/bin/ruby
require 'rubygems'
gem 'soap4r'
require 'sinatra'
require 'models/aura'

WAIT_TIME = 0
AURA_ENDPOINT = "http://localhost:8000/SOAP"

aura = Aura.instance
# If the client says the connection was closed then there was probably an exception suppressed by this mechanism.
set :show_exceptions => false
set :logging, true

before do
	id = params[:uuid]
	id = id ? id : "oldAppVersion"
	log = File.open("Inquire-log-" + id + ".log", "a")
	log.puts "\n\n\n===========================================\n\n\n"
	log.puts "REQUEST: " + request.path() 
	log.puts Time.now
	log.puts "IP Address: " + request.ip
	log.puts "parameters"
	#log.puts params
	params.each_pair{|key, value| log.puts "#{key}:\n #{value}"}
	log.close
	request 
end

post "/answers" do
  begin
    aura.new_question

    wait

    content_type 'application/html', :charset => 'utf-8'

    aura.ask_question(params[:question])
    if aura.valid_question?
      status 200
      logResult(aura.answer_question)
    else
      status 400
      logResult(aura.question_errors)
    end
  rescue StandardError => ex
    status 400
    logResult("An error occurred: " + ex.class.to_s + "<br /><br />" + ex.message)
  end
end

post "/suggested_questions_lists" do
  logResult(aura.suggest_questions(params))
end

post "/structured_questions_lists" do
  logResult(aura.get_structured_questions(params))
end

post "/suggested_formatted_questions_lists" do
  logResult(aura.suggest_formatted_questions(params))
end

post "/formatted_structured_questions_lists" do
  logResult(aura.get_formatted_structured_questions(params))
end

get "*" do
  logResult(puts "#{params[:splat]} 404 not found")
  pass
end

def logResult(result)
	id = params[:uuid]
	id = id ? id : "oldAppVersion"
	log = File.open("Inquire-log-" + id + ".log", "a")
	log.puts "*******************************************"
	log.puts "RESPONSE: "
	log.puts Time.now
	log.puts result
	log.close
	result 
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
