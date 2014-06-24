class WordSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :pronunciation
end
