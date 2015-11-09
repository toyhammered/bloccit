require 'rails_helper'

RSpec.describe Ratingable, type: :model do

  it { should belong_to :rateable }

end # end of Ratingable Test Model
