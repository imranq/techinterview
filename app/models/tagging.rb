class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :problem
  # attr_accessible :title, :body
end