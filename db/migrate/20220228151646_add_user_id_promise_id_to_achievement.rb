class AddUserIdPromiseIdToAchievement < ActiveRecord::Migration[7.0]
  def change
    add_column :achievements, :user_id, :integer
    add_column :achievements, :promise_id, :integer
  end
end
