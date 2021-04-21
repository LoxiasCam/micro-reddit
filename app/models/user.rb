class User < ApplicationRecord
  has_many :posts
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 4…10 }
  validates :password, presence: true, length: { in: 4…20 }
end
