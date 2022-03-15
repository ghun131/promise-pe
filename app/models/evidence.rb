class Evidence < ApplicationRecord
  belongs_to :promise
  belongs_to :user
  has_many :medium
  has_many :reviews
  has_one :achievement
end
