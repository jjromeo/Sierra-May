require 'rails_helper'

RSpec.describe Product do 

  it { should belong_to(:category) }
  it { should validate_presence_of(:name) }
  it { should have_many(:variations) }

end
