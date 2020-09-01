class Book < ApplicationRecord
  #https://github.com/rails/rails/issues/24518
  belongs_to :subject, optional: true
  #validates_presence_of :title, message:" can't be left empty"
  validates :title, presence: true, message: "can't be left empty"
  validates_numericality_of :price, message:"not added/Non numerical included"
end
