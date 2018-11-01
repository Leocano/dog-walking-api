require 'test_helper'

class DogWalkingTest < ActiveSupport::TestCase
  test 'should return nil for real duration without finish_time' do
    dog_walking = DogWalking.new
    assert_nil dog_walking.real_duration
  end
end
