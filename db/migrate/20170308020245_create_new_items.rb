class CreateNewItems < ActiveRecord::Migration[5.0]
  def change
    create_table :new_items do |t|
      t.string :title
      t.string :lead, :limit => 250
      t.text :body

      t.timestamps
    end
  end
end
