class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.bigint :user_id, null: false
      t.bigint :post_id, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
