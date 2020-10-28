class CreateRestrs < ActiveRecord::Migration[6.0]
  def change
    create_table :restrs do |t|
      t.integer :restrid
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
