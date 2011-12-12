require 'test/unit'
require 'active_support/test_case'
require 'stringio'

SNEAKERS_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(SNEAKERS_ROOT)
require 'sneakers'

class SneakersTest < ActiveSupport::TestCase
  test "class exists" do
    assert Sneakers
  end

  test "captures a phrase" do
    $stdin = StringIO.new('My test phrase', 'r')
    assert_equal 'My test phrase', Sneakers.new.instance_variable_get(:@phrase)
  end

  test "sets up a control array equal in length to the phrase" do
    $stdin = StringIO.new('Testing', 'r')
    assert_equal [0,0,0,0,0,0,0], Sneakers.new.instance_variable_get(:@control)
  end
end
