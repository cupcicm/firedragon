class Entry < ActiveRecord::Base

  is_impressionable

  before_create :determine_data_type

  # Find an entry given its hash Id
  def self.find_by_hash_id(hash_id)
    id = Hasher.decode(hash_id)
    Entry.find(id)
  end

  # Return the hashed Id for this entry
  def hash_id
    Hasher.encode(self.id)
  end

  def to_param
    hash_id
  end

  private

  def determine_data_type
    self.data_type = case data
    when URI::regexp(%w(http https))
      "url"
    else
      "text"
    end
  end

end
