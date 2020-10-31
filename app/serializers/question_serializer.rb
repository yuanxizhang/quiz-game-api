class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer, :explain
  has_many :options
  belongs_to :test
end
