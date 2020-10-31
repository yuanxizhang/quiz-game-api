class TestSerializer < ActiveModel::Serializer
  attributes :id, :name, :questions
  
  def questions
    ActiveModel::SerializableResource.new(object.questions,  each_serializer: QuestionSerializer)
  end
end
