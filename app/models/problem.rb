class Problem < ActiveRecord::Base
	#has_many :tags, through: :taggings
	belongs_to :user

	acts_as_taggable
	acts_as_taggable_on :problems

	# validates :body, presence: true
	validates :title, presence: true
	validates :answer, presence: true


	def self.tagged_with(name)
	  ActsAsTaggableOn::Tag.find_by_name!(name).problems
	end

	def self.tag_counts
	  Tag.select("tags.*, count(taggings.tag_id) as count").
	    joins(:taggings).group("taggings.tag_id")
	end

	def tag_list
	  tags.map(&:name).join(", ")
	end

	
	def self.search(search)
	    if search
	      	result = where('LOWER(body) LIKE LOWER(:search) or LOWER(title) LIKE LOWER(:search)', search: "%#{search}%")
	    else
	      scoped
	    end 
	end
	# def tag_list=(names)
	#   self.tags = names.split(",").map do |n|
	#     Tag.where(name: n.strip).first_or_create!
	#   end
	# end
end
