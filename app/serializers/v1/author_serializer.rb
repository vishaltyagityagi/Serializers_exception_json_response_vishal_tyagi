class V1::AuthorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :books



# to override the book association data, it will show the book with id 6 only . neither nill
  # def books
  # 	object.books.where(id: "6")
  # end
end
