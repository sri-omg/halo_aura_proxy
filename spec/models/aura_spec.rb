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

    describe "when given a concept parameter" do
      before(:each) do
        @concept = "Things that make you go hmmmmmm..."
        params = { :concept => @concept }

        @response = @aura.suggest_questions(params)
        @doc = Nokogiri::XML::Document.parse(@response)
      end

      it "should make a getQuestionsForConcept request to the AURA server" do
        @aura.suggested_questions_requests.should_not be_empty
        @aura.suggested_questions_requests.first[:concept].should == @concept
      end

      it "should return an XML document" do
        @doc.should be_kind_of(Nokogiri::XML::Document)
      end

      it "should return <questions> as the root node" do
        @doc.root.name.should == "questions"
      end
    end
  end
end
