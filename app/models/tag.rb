class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :problems, through: :taggings

end