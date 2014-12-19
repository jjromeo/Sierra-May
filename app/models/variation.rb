class Variation < ActiveRecord::Base
  validates_presence_of :price
  belongs_to :product
end
