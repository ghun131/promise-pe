class AddUserIdPromiseIdEvidenceIdToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :user_id, :integer
    add_column :reviews, :promise_id, :integer
    add_column :reviews, :evidence_id, :integer
  end
end
