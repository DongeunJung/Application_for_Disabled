class CreateMemberDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :member_details do |t|
      t.integer :member_id
      t.boolean :wheelchair
      t.boolean :vehicle
      t.string :gender
      t.string :address

      t.timestamps
    end
  end
end
