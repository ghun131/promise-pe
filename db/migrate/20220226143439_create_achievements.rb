class CreateAchievements < ActiveRecord::Migration[7.0]
  def change
    create_table :achievements do |t|
      t.belongs_to :user
      t.belongs_to :promise
      t.bigint :money

      t.timestamps
    end
  end
end
