class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :main
      t.string :Prefecture
      t.text :place
      t.integer :person
      t.datetime :starttime
      t.integer :money
      t.timestamps
    end
  end
end
