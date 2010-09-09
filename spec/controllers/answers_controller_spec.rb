require 'spec_helper'

describe AnswersController do
  describe "#create" do
    before(:each) do
      @request_proc = lambda do
        post :create, :question => @question_parameter, :format => @format
      end
    end

    describe "expecting an XML response" do
      before(:each) do
        @format = 'xml'
      end

      describe "with valid parameters" do
        before(:each) do
          @question_parameter = "What is a snail?"
        end
      end

      describe "with invalid parameters" do
        before(:each) do
          @question_parameter = ""
          @request_proc.call
        end

        it "should succeed" do
          response.should be_success
        end
      end
    end
  end
end
