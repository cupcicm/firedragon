class Entry < ActiveRecord::Base

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

end
