class Roi < ActiveRecord::Base
  self.primary_key = :roi_no
  belongs_to :toi, foreign_key: :toi_no
	has_many :cds, foreign_key: :roi_no
end
