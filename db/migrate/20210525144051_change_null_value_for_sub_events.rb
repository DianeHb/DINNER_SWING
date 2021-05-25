class ChangeNullValueForSubEvents < ActiveRecord::Migration[6.0]
  def change
    change_column_null :sub_events, :cooker_id, true
  end
end
