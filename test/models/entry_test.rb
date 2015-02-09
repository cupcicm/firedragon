require "test_helper"

class EntryTest < ActiveSupport::TestCase

  def test_hashid_encoding
    assert_equal "xM", entries(:fourty_two).hash_id
  end

  def test_find_by_hashid
    assert_equal entries(:fourty_two), Entry.find_by_hash_id("xM")
  end

  def test_to_param
    assert_equal "xM", entries(:fourty_two).to_param
  end

  def test_url_recognition
    entry = Entry.create(data: "http://example.com")
    assert_equal "url", entry.data_type

    entry = Entry.create(data: "https://example.com")
    assert_equal "url", entry.data_type
  end

  def test_failed_recognition
    entry = Entry.create(data: "Lorem Ipsum")
    assert_equal "text", entry.data_type
  end

end
