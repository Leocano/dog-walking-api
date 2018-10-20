class CreateDogWalkings < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_walkings do |t|
      t.references :dog_walking_status, foreign_key: true
      t.datetime :scheduled_date
      t.time :duration
      t.float :latitude
      t.float :longitude
      t.datetime :start_time
      t.datetime :finish_time

      t.timestamps
    end
  end
end
