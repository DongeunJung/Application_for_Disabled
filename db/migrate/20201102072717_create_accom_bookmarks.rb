class CreateAccomBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :accom_bookmarks do |t|
      t.integer :member_id
      t.integer :seq
      t.integer :realid

      t.timestamps
    end
  end
end
