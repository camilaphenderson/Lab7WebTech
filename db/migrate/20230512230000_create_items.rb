class CreateItems < ActiveRecord::Migration[6.1]
    def change
      create_table :items do |t|
        t.string :name
        t.bigint :price
        t.integer :calories
        t.references :dish, null: false, foreign_key: true
        t.references :restaurant, null: false, foreign_key: true
        t.timestamps
      end
    end
end