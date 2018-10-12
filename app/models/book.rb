class Book < ApplicationRecord
  has_many :book_copies
  belongs_to :author
 
  # validates :title, :author, presence: true
  validates :title, presence: true
end
