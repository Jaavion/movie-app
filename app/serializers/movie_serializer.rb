class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :english, :genres, :director, :image_url
end
