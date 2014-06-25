class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :video

  has_many :words
  
end
