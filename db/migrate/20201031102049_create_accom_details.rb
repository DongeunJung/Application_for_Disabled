class CreateAccomDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :accom_details do |t|
		t.integer :accom_id
		t.string :address
		t.string :telephone
		t.string :homepage
		t.string :accessible
		t.string :parking
		t.string :isflat
		t.string :elevator
		t.timestamps
    end
  end
end
