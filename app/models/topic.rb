class Topic < ApplicationRecord
  #do data validation FIRST!
  validates_presence_of :title

  has_many :blogs

  def self.with_blogs
    includes(:blogs).where.not(blogs: { id: nil})
  end
end
