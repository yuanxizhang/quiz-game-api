class OptionSerializer < ActiveModel::Serializer
  attributes :id, :item
  belongs_to :question
end
