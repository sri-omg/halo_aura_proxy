require 'rubygems'
require 'sinatra'
require 'nokogiri'
require 'rack/test'
require 'spec'
require 'spec/autorun'
require 'spec/interop/test'

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

require File.join(File.dirname(__FILE__), '..', 'server')

require 'models/aura'
class Aura
  def asked_questions
    @connection.asked_questions
  end

  def suggested_questions_requests
    @connection.suggested_questions_requests
  end

  def get_structured_questions_requests
    @connection.get_structured_questions_requests
  end

  def valid_question!(options)
    reset_question!
    if (!options[:return_nil])
      @connection.ask_response = QuestionConceptMap.new
    end
    @connection.answer_response = options[:answer]
  end

  def invalid_question!(options)
    reset_question!
    @connection.ask_response = options[:errors]
  end

  private

  def reset_question!
    @connection.ask_response = nil
    @connection.answer_response = nil
  end
end
