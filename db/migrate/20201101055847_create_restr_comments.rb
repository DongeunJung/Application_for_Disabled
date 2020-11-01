class CreateRestrComments < ActiveRecord::Migration[6.0]
  def change
    create_table :restr_comments do |t|
		t.integer :restr_id
		t.integer :member_id
		t.string :member_name
		t.string :comment
		
		t.timestamps
    end
  end
end
