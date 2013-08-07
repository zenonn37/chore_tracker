require 'test_helper'

class ChoreTest < ActiveSupport::TestCase
 test" requires some content"do
 chore = Chore.new
 assert !chore.save
 assert !chore.errors[:name].empty?
    end

    test"requires some content"do
    chore = Chore.new
    assert !chore.save
    assert !chore.errors[:summary].empty?
    end

end
