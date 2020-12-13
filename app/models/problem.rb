class Problem < ApplicationRecord
		has_many :solutions, dependent: :destroy
    validates :text, presence: true
    accepts_nested_attributes_for :solutions
end
