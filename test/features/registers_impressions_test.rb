require 'test_helper'

class RegisterImpressionsTest < Capybara::Rails::TestCase

  def test_impressions
    entry = entries(:fourty_two)
    assert_equal 0, entry.impressionist_count

    visit '/xM'

    assert_equal 1, entry.impressionist_count
  end

end
