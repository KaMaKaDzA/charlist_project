class CreateCharlist < ActiveRecord::Migration[6.1]
  def change
    create_table :charlists do |t|
      t.integer :user_id
      t.references :system_list, polymorphic: true, index: true
      t.string :pdf_link

      t.timestamps
    end
  end
end
