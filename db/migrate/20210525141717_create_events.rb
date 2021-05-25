class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :date
      t.references :city, null: false, foreign_key: true
      t.string :theme

      t.timestamps
    end
  end
end
