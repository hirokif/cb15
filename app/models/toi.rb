class Toi < ActiveRecord::Base
  self.primary_key = :toi_no
  has_many :rois, foreign_key: :toi_no
	accepts_nested_attributes_for :rois
#	attr_accessible :rois_attributes
end
