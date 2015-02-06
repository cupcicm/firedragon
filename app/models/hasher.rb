# Used to encode/decode Ids to Hashed Ids
class Hasher

  # Encode the given `number` to a Hashed Id
  def self.encode(number)
    hasher.encode(number)
  end

  # Decode the given `hash_id` to it's numerical representation
  def self.decode(hash_id)
    hasher.decode(hash_id).first
  end

  private

  def self.hasher
    @@hasher ||= Hashids.new(Rails.application.secrets.hashid_salt)
  end

end
