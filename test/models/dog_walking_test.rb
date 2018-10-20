require 'test_helper'

class DogWalkingTest < ActiveSupport::TestCase
  test 'should not save dog walking without a pet' do
    dog_walking = DogWalking.new
    assert_not dog_walking.save, 'Saved dog walking without a pet'
  end
end
