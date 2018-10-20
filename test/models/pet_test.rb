require 'test_helper'

class PetTest < ActiveSupport::TestCase
  test 'should not save pet without a name' do
    pet = Pet.new
    assert_not pet.save, 'Saved pet without a name'
  end
end
