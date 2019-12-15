class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.belongs_to :user, foreign_key: true, dependent: :destroy
      t.belongs_to :event, foreign_key: true, dependent: :destroy
      t.text :body, null: false

      t.timestamps
    end
  end
end
