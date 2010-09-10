require 'spec_helper'

describe AnswersController do
  describe "#create" do
    before(:each) do
      @request_proc = lambda do
        post :create, :question => @question_parameter
      end
    end

    describe "with valid parameters" do
      before(:each) do
        @question_parameter = "What is a snail?"
        @request_proc.call
      end

      it "should succeed" do
        response.should be_success
      end
    end

    describe "with invalid parameters" do
      before(:each) do
        @question_parameter = ""
        @request_proc.call
      end

      it "should return 400"
    end
  end
end
