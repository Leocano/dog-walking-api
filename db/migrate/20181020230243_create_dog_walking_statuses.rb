class CreateDogWalkingStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_walking_statuses do |t|
      t.string :description

      t.timestamps
    end
  end
end
