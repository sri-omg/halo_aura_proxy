require 'builder'

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

  def suggest_questions(params)
    text = params[:text]
    section = params[:section]
    concept = params[:concept]

    xml = Builder::XmlMarkup.new
    xml.instruct!

    if (!concept.nil?)
      questions = @connection.getQuestionsForConcept(concept)
    else
      questions = @connection.getQuestions(text, section)
    end

    xml.questions do |questions_element|
      questions.each do |question|
        xml.question(question)
      end
    end
  end

  private

  def initialize(endpoint)
    @connection = test? ? FakeSoapServerPort.new : SOAPServerPort.new(endpoint)
    @connection.startQASession(nil);
  end
end

# TODO: REMOVE THIS when the connection actually supports this method (or one like it)
def SOAPServerPort
  def getQuestionsForConcept(concept)
    ["What is the sound of one hand clapping?", "How strong is a chain?", "What is your favorite color?", "Where is the beef?", "Dónde está el baño?"]
  end
end
