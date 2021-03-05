class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :description
      t.boolean :status
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
