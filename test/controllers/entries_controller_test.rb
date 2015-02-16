require 'test_helper'

class EntriesControllerTest < ActionController::TestCase

  def entry
    entries(:fourty_two)
  end

  def test_resolve_redirect
    get :resolve, hash_id: 'xM'

    assert_redirected_to entry.data
    assert_response 301
  end

end
