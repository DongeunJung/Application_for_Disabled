class CreateRestrDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :restr_details do |t|
	  t.integer :restr_id
      t.string :fulladd
      t.string :accessible
      t.string :parking
      t.string :isflat
      t.string :elevator

      t.timestamps
    end
  end
end
