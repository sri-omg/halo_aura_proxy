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
#{@connection.answerQuestionIpad(nil).first}
<p><a href="chap17-2.htm#para05" class="text-ref">Test link to Chapter 17-2 #para05</a></p>
<p><a class="keywords" href="../concepts/rna.html">Test keyword link: RNA</a></p>
html
  end

  def valid_question?
    @question_response.nil? || @question_response.is_a?(QuestionConceptMap)
  end

  def question_errors
    @question_response
  end

  def suggested_questions(section, text)
    if test?
      @connection.suggestedQuestions(section, text)
    end
    "<questions>" +
    "<question>What are the questions in #{section} for '#{text}'?</question>" +
    "<question>What is another question for '#{text}' in #{section}?</question>" +
    "</questions>"
  end

  private

  def initialize(endpoint)
    @connection = test? ? FakeSoapServerPort.new : SOAPServerPort.new(endpoint)
    @connection.startQASession(nil);
  end
end
