require 'test_helper'

class HasherTest < ActiveSupport::TestCase

  def test_encoding
    assert_equal 'xM', Hasher.encode(42)
  end

  def test_decoding
    assert_equal 42, Hasher.decode('xM')
  end
end
