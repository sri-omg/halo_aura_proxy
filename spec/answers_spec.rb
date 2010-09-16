require 'spec_helper'

describe "/answers" do
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

  describe "startup" do
    it "should start QA mode" do
      @aura.should be_in_qa_mode
    end
  end

  describe "#create" do
    before(:each) do
      @previous_question = "What is the diameter of a swallow?"
      @aura.asked_questions << @previous_question

      @question = "How many roads must a man walk down?"
      @request_proc = lambda do
        post "/answers", { :question => @question }
      end
    end

    it "should reset the QA session" do
      @request_proc.call
      @aura.asked_questions.should_not include(@previous_question)
    end

    it "should send the question to the AURA server" do
      @request_proc.call
      @aura.asked_questions.should include(@question)
    end

    describe "with a valid question" do
      before(:each) do
        @answer = "<div>At least seven.</div>"

        @aura.valid_question!(:answer => @answer)
        @request_proc.call
      end

      it "should return 200" do
        response.status.should == 200
      end

      it "should return the answer returned by AURA for the question" do
        response.body.should == @answer
      end
    end

    describe "with an invalid question" do
      before(:each) do
        @errors = "<div>I don't understand your crazy talk, Parker</div>"

        @aura.invalid_question!(:errors => @errors)
        @request_proc.call
      end

      it "should return 200" do
        response.status.should == 200
      end

      it "should return the errors returned by AURA" do
        response.body.should == @errors
      end
    end

    describe "with a question that returns nil" do
      before(:each) do
        @answer = "very little of note"

        @aura.valid_question!(:answer => @answer, :return_nil => true)
        @request_proc.call
      end

      it "should return 200" do
        response.status.should == 200
      end

      it "should return the answer returned by AURA for the question" do
        response.body.should == @answer
      end
    end
  end
end
