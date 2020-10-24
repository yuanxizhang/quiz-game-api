class OptionSerializer < ActiveModel::Serializer
  attributes :id, :item
  belongs_to :questions
end
