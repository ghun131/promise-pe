class AddUserIdToEvidence < ActiveRecord::Migration[7.0]
  def change
    add_column :evidences, :user_id, :integer
  end
end
