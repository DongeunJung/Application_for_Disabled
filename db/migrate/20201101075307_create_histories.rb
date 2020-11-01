class CreateHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :histories do |t|
      t.integer :member_id
      t.integer :seq
	  t.integer :realid

      t.timestamps
    end
  end
end
