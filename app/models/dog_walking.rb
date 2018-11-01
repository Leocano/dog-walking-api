class DogWalking < ApplicationRecord
  belongs_to :dog_walking_status
  has_and_belongs_to_many :pets
  
  def real_duration
    return nil if self.finish_time.nil?
    return self.finish_time - self.start_time
  end
end
