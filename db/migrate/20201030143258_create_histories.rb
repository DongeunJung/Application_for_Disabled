class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
		t.integer :member_id
		t.integer :restr_id
		t.timestamps
    end
  end
end
