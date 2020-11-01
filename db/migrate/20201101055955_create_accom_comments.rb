class CreateAccomComments < ActiveRecord::Migration[6.0]
  def change
    create_table :accom_comments do |t|
		t.integer :accom_id
		t.integer :member_id
		t.string :member_name
		t.string :comment
		
		t.timestamps
    end
  end
end
