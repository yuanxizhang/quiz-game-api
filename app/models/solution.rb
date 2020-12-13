class Solution < ApplicationRecord
		belongs_to :problem
    validates :text, presence: true
end
