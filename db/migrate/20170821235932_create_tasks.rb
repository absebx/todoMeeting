class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :autor
      t.text :body
      t.references :meeting, foreign_key: true

      t.timestamps
    end
  end
end
