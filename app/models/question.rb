class Question < ApplicationRecord
    belongs_to :test
    has_many :options, dependent: :destroy
    validates :question, presence: true
    validates :answer, presence: true
    accepts_nested_attributes_for :options
end
