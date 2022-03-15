class Promise < ApplicationRecord
  belongs_to :user
  has_many :evidences
  has_many :reviews
end
