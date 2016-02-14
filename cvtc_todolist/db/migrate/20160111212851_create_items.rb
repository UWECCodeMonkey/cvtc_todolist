class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :notes
      t.date :due_date
      t.boolean :done, default: false

      t.timestamps null: false
    end
  end
end
