class CreateEvidences < ActiveRecord::Migration[7.0]
  def change
    create_table :evidences do |t|
      t.belongs_to :promise
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
