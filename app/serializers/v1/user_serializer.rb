class V1::UserSerializer < ActiveModel::Serializer
   attributes :id, :first_name, :last_name, :email, :book_copies
end
