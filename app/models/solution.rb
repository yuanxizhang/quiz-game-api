class Solution < ApplicationRecord
		belongs_to :problem
    validates :text, presence: true
    validates :language, presence: true
end
