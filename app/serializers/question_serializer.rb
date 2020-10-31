class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer, :explain, :options

  def options
    ActiveModel::SerializableResource.new(object.options,  each_serializer: OptionSerializer)
  end
end
