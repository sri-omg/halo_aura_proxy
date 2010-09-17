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
    @connection.answerQuestionIpad(nil).first
  end

  def valid_question?
    @question_response.nil? || @question_response.is_a?(QuestionConceptMap)
  end

  def question_errors
    @question_response
  end

  private

  def initialize(endpoint)
    @connection = test? ? FakeSoapServerPort.new : SOAPServerPort.new(endpoint)
    @connection.startQASession(nil);
  end
end
