class Achievement < ApplicationRecord
  belongs_to :user
  belongs_to :promise
  has_many :reviews
end
