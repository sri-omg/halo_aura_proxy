require 'builder'
require 'nokogiri'

project_dir = File.join(File.dirname(__FILE__), "..")

if !defined?(test?)
  def test?; false; end
end

require File.expand_path(File.join(project_dir, 'soap', 'defaultDriver'))
if test?
  require File.expand_path(File.join(project_dir, 'spec', 'fake_soap_server_port'))
end

class Aura
  def self.endpoint=(endpoint)
    @endpoint = endpoint
  end

  def self.endpoint
    @endpoint || "http://localhost:8000/SOAP"
  end

  def self.instance
    @instance ||= new(self.endpoint)
  end

  def self.reset
    @instance = nil
  end

  def in_qa_mode?
    @connection.started?
  end

  def new_question
    @connection.resetQASession(nil)
  end

  def ask_question(question)
    @question_response = @connection.askQuestion(question, nil, nil, nil)
  end

  def answer_question
    <<-html
#{@connection.answerQuestionIpad(nil, '..').first}
<div id="test-links"><p><a href="../book/chapter17/chapter17-2.html#section2-1" class="text-ref">Test link to Chapter 17-2 #2-1</a></p>
<p><a class="keywords" href="../glossary/RNA.html">Test keyword link: RNA</a></p></div>
html
  end

  def valid_question?
    @question_response.nil? || @question_response.is_a?(Array) || @question_response.is_a?(QuestionConceptMap)
  end

  def question_errors
    @question_response
  end

  def suggest_questions(params)
    xml = Builder::XmlMarkup.new
    xml.instruct!

    questions = @connection.getQuestions(params[:text], params[:section])

    xml.questions do |questions_element|
      questions.each do |question|
        xml.question(question)
      end
    end
  end

  def get_structured_questions(params)
    xml = Builder::XmlMarkup.new
    xml.instruct!

    question_xml = @connection.getStructuredQuestions(params[:question], params[:concept])
    doc = Nokogiri::XML::Document.parse(question_xml)
    questions = doc.search("Question").collect(&:text)

    xml.questions do |questions_element|
      questions.each do |question|
        xml.question(question)
      end
    end
  end

  private

  def initialize(endpoint)
    @connection = test? ? FakeSoapServerPort.new : SOAPServerPort.new(endpoint)
    @connection.options["protocol.http.receive_timeout"] = 605 unless test? # assuming AURA has a 10 minute timeout
    @connection.startQASession(nil);
  end
end
