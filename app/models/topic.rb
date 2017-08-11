class Topic < ApplicationRecord
  #do data validation FIRST!
  validates_presence_of :title

  has_many :blogs
end
