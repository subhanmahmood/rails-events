class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.string :title, null: false
      t.text :location
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
