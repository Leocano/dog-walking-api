class EditDogWalkingTable < ActiveRecord::Migration[5.2]
  def change
    change_table :dog_walkings do |t|
      t.change :duration, :integer
    end
  end
end
