class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.bigint :user_id
      t.bigint :post_id
      t.text :text
      t.timestamps
    end
  end
end
