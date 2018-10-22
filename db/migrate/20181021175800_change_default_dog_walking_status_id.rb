class ChangeDefaultDogWalkingStatusId < ActiveRecord::Migration[5.2]
  def change
    change_column_default :dog_walkings, :dog_walking_status_id, 1
  end
end
