class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author, :presence => true
      t.text :body, :presence => true
      t.references :new_item, foreign_key: true

      t.timestamps
    end
  end
end
