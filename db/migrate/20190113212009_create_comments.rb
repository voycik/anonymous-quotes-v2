class CreateComments < ActiveRecord::Migration[5.2]
  def change
    drop_table :comments
    create_table :comments do |t|
      t.string :user
      t.text :body
      t.references :quote, foreign_key: true

      t.timestamps
    end
  end
end
