class CreateCharlist < ActiveRecord::Migration[6.1]
  def change
    create_table :charlists do |t|
      t.integer :user_id
      t.integer :system_list_type
      t.integer :system_list_id

      t.timestamps
    end
  end
end
