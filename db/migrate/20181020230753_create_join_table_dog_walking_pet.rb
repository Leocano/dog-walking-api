class CreateJoinTableDogWalkingPet < ActiveRecord::Migration[5.2]
  def change
    create_join_table :dog_walkings, :pets
  end
end
