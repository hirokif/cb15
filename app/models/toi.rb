class Toi < ActiveRecord::Base
  self.primary_key = :toi_no
  has_many :rois, foreign_key: :toi_no
end
