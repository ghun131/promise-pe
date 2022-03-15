class CreatePromises < ActiveRecord::Migration[7.0]
  def change
    create_table :promises do |t|
      t.belongs_to :user
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
