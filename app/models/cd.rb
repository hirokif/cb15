class Cd < ActiveRecord::Base
	belongs_to :corp, foreign_key: :corp_no
	belongs_to :roi, foreign_key: :roi_no
end
