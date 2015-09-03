class User < ActiveRecord::Base
  has_many  :invitations
  has_many  :events, through: :invitations
  has_many  :items

  validates :username, uniqueness: true, presence: true
  validate :password_must_be_more_than_6_characters

def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(raw_password)
    @raw_password = raw_password
    @password = BCrypt::Password.create(raw_password)
    self.hashed_password = @password
  end

  def authenticate(password)
    self.password == password
  end

  def password_must_be_more_than_6_characters
    if new_record? || @raw_password
      if !@raw_password || @raw_password.length < 6
        errors.add(:password, "must be at least 6 characters")
      end
    end
  end

end
