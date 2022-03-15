class CreateMedia < ActiveRecord::Migration[7.0]
  def change
    create_table :media do |t|
      t.belongs_to :evidence
      t.string :url
      t.string :media_type

      t.timestamps
    end
  end
end
