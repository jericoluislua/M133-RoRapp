class Subject < ApplicationRecord
  has_many :books, dependent: :restrict_with_error
  #validates_presence_of :title, :message =>"Subject name can't be left empty"
end
