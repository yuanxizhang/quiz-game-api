class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer
  has_many :options
  belongs_to :test
end
