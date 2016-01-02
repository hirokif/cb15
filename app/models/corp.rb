class Corp < ActiveRecord::Base
    self.primary_key = :corp_no
		has_many :cds, foreign_key: :corp_no
		accepts_nested_attributes_for :cds
end
