require 'rails_helper'

RSpec.describe Category, type: :model do 
  before do 
    @category = Category.new(name: "shoes")
  end

  it { should have_many(:products) }
  it { should validate_presence_of(:name) }
  it { should respond_to(:name) }

end
