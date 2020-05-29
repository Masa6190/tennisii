class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title, null: false
      t.text :main, null: false
      t.string :Prefecture, null: false
      t.text :place, null: false
      t.integer :person, null: false
      t.datetime :starttime, null: false
      t.integer :money, null: false
      t.timestamps
    end
  end
end
