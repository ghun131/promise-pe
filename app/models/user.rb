class User < ApplicationRecord
  has_many :promises
  has_many :evidences, through: :promises
  has_many :reviews
end
