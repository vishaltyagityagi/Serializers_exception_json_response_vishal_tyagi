class V1::BookCopySerializer < ActiveModel::Serializer
  attributes :id, :book, :user, :isbn, :published, :format
  # def book
  # 	iinstance_options[:without_serializer] ? object.author : AuthorSerializer.new(object.author, without_serializer: true)
  # end
  # def user
  # 	iinstance_options[:without_serializer] ? object.user : UserSerializer.new(object.user, without_serializer: true)
  # end

end
