class CreateAccoms < ActiveRecord::Migration[6.0]
  def change
    create_table :accoms do |t|
		t.integer :seq
		t.string :name
		t.string :gu
		
		t.timestamps
    end
  end
end
