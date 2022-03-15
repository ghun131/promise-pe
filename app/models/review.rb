class Review < ApplicationRecord
  belongs_to :user
  belongs_to :promise
  belongs_to :evidence
  belongs_to :achievement
end
