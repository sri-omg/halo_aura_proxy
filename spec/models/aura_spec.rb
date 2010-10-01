require 'spec_helper'

describe "Aura" do
  before(:each) do
    @aura = Aura.instance
  end

  describe "#suggest_questions" do
    before(:each) do
      @response = @aura.suggest_questions("RNA transcription", "section 17-2")
      @doc = Nokogiri::XML::Document.parse(@response)

    end

    it "should return an XML document" do
      @doc.should be_kind_of(Nokogiri::XML::Document)
    end

    it "should return <questions> as the root node" do
      @doc.root.name.should == "questions"
    end
  end
end
