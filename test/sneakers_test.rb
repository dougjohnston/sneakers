require 'test/unit'
require 'active_support/test_case'

SNEAKERS_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(SNEAKERS_ROOT)
require 'sneakers'

class SneakersTest < ActiveSupport::TestCase
  test "class exists" do
    assert Sneakers
  end
end
