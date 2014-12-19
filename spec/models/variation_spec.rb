require 'rails_helper'

RSpec.describe Variation, type: :model do 
  it { should belong_to(:product) }
  it { should validate_presence_of(:price) }
end
