class Option < ApplicationRecord
    belongs_to :question
    validates :item, presence: true
end
