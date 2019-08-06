class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :details
      t.boolean :completed || false

      t.timestamps
    end
  end
end
