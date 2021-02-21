class Solution < ApplicationRecord
		belongs_to :problem
		belongs_to :user
    validates :text, presence: true
    validates :language, presence: true
end
