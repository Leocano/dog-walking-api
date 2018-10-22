class ChangeDogWalkingStatusIdDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :dog_walkings, :dog_walking_status_id, to: 1
  end
end
