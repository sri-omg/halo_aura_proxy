require 'spec_helper'

describe "Aura" do
  before(:each) do
    @aura = Aura.instance
  end

  describe "#suggest_questions" do
    before(:each) do
      @aura.suggested_questions_requests.clear
    end

    describe "when given text and section parameters" do
      before(:each) do
        params = { :text => "RNA transcription", :section => "section 17-2" }

        @response = @aura.suggest_questions(params)
        @doc = Nokogiri::XML::Document.parse(@response)
      end

      it "should make a getQuestions request to the AURA server" do
        @aura.suggested_questions_requests.should_not be_empty
        @aura.suggested_questions_requests.first[:text].should == "RNA transcription"
        @aura.suggested_questions_requests.first[:section].should == "section 17-2"
      end

      it "should return an XML document" do
        @doc.should be_kind_of(Nokogiri::XML::Document)
      end

      it "should return <questions> as the root node" do
        @doc.root.name.should == "questions"
      end
    end
  end

  describe "#get_structured_questions" do

    shared_examples_for "an action that sends a getStructuredQuestions request" do
      it "should make a getStructuredQuestions request to the AURA server" do
        @aura.structured_questions_requests.should_not be_empty
        @aura.structured_questions_requests.first[:concept].should == @concept
      end

      it "should return an XML document" do
        @doc.should be_kind_of(Nokogiri::XML::Document)
      end

      it "should return <questions> as the root node" do
        @doc.root.name.should == "questions"
      end

      it "should return each returned question as the content of a question element" do
        @doc.search("question").detect do |question_element|
          question_element.text == "A Eukaryotic cell has how many chromosomes?"
        end.should_not be_nil
      end
    end

    before(:each) do
      @aura.structured_questions_requests.clear

      @concept = "Things that make you go hmmmmmm..."
      @params = { :concept => @concept }
    end

    describe "with no question" do

      before(:each) do
        @response = @aura.get_structured_questions(@params)
        @doc = Nokogiri::XML::Document.parse(@response)
      end

      it_should_behave_like "an action that sends a getStructuredQuestions request"

      it "should not include a question in the getStructuredQuestions request to the AURA server" do
        @aura.structured_questions_requests.first[:question].should be_nil
      end
    end

    describe "with a question" do
      before(:each) do
        @question = "This is not a valid question and the server did not like it!"
        @params[:question] = @question

        @response = @aura.get_structured_questions(@params)
        @doc = Nokogiri::XML::Document.parse(@response)
      end

      it_should_behave_like "an action that sends a getStructuredQuestions request"

      it "should include the question in the getStructuredQuestions request to the AURA server" do
        @aura.structured_questions_requests.first[:question].should == @question
      end
    end
  end
end
