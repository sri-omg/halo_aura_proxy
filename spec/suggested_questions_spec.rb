require 'spec_helper'

describe "/suggested_questions" do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  def response
    last_response
  end

  before(:each) do
    @aura = Aura.instance
  end

  describe "#create" do
    before(:each) do
      @section = "section0-0"
      @text = "Messenger RNA is fun!"
      @request_proc = lambda do
        post "/suggested_questions_lists", { :section => @section, :text => @text }
      end
    end

    it "should send the request to the AURA server" do
      @request_proc.call
      @aura.suggested_questions_requests.should include({:section => @section, :text => @text})
    end

    it "should return 200" do
      @request_proc.call
      response.status.should == 200
    end

    it "should get the correct response for a section and text" do
      @section = "test-section"
      @text = "test text"
      @request_proc.call
      response.body.should == "<questions><question>What are the questions in test-section for 'test text'?</question><question>What is another question for 'test text' in test-section?</question></questions>"
    end
  end
end
