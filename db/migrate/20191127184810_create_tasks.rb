class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :event, foreign_key: true
      t.string :title, null: false
      t.datetime :deadline, null: false
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
