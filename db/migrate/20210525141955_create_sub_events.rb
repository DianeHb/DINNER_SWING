class CreateSubEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_events do |t|
      t.string :name
      t.time :hour
      t.references :cooker, null: false, foreign_key: { to_table: :users }
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
