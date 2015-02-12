require "test_helper"

class AddUrlsTest < Capybara::Rails::TestCase

  def test_shorten_a_long_url
    url = "https://ariejan.net"

    visit root_path
    fill_in "entry[data]", with: url
    click_button "Do it"

    entry = Entry.where(data: url).first

    assert_equal current_path, entry_path(entry)
  end

end
