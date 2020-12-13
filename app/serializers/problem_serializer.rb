lass ProblemSerializer < ActiveModel::Serializer
  attributes :id, :text, :solutions
  
  def solutions
    ActiveModel::SerializableResource.new(object.solutions,  each_serializer: SolutionSerializer)
  end
end