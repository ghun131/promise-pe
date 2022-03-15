class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :user
      t.belongs_to :evidence
      t.belongs_to :promise
      t.string :status

      t.timestamps
    end
  end
end
