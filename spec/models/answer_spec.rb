require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "This is a title", body: "This is body text", resolved: false)}
  let(:answer) { Answer.create!(body: "This is body text", question: question)}

  describe "attributes" do
  	it "should respond to body" do
  		expect(question).to respond_to(:body)
  	end
  end
end
