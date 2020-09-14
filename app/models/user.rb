class User < ApplicationRecord
  has_secure_password
  validates_presence_of :username, message:" can't be left empty"
  validates_presence_of :password, message:" can't be left empty"
end
