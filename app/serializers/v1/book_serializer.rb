class V1::BookSerializer < ActiveModel::Serializer
  attributes :id, :author, :book_copies

  def author
  	instance_options[:without_serializer] ? object.author : AuthorSerializer.new(object.author, without_serializer: true)
  end
end
