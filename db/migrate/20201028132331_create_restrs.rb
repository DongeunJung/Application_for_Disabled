class CreateRestrs < ActiveRecord::Migration[6.0]
  def change
    create_table :restrs do |t|
      t.integer :seq
      t.string :name
      t.string :gu

      t.timestamps
    end
  end
end
