class Book < ApplicationRecord
  belongs_to :subject
  validates_presence_of :title, :message =>" can't be left empty"
  validates_numericality_of :price, :message =>"not added/Non numerical included"
end
