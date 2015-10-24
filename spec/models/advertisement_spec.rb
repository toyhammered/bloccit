require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) {Advertisement.create!(title: "I am an advert", copy: "Ad by Daniel", price: 10)}

  describe "attributes" do
		it "should respond to title" do
			expect(advertisement).to respond_to(:title)
		end

		it "should respond to copy" do
			expect(advertisement).to respond_to(:copy)
		end

		it "should respond to price" do
			expect(advertisement).to respond_to(:price)
		end
	end



end # end of Advertisement TDD
