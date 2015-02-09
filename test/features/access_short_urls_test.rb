require "test_helper"

class AccessShortUrlsTest < Capybara::Rails::TestCase

  def test_correct_redirect_for_urls
    entry = entries(:fourty_two)

    visit "/xM"
    assert_equal current_url, entry.data
  end

end
