class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :industry
      t.text :task
      t.decimal :price, precision: 8, scale: 2
      t.integer :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
