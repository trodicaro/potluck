class Event < ActiveRecord::Base
  has_many  :invitations
  has_many  :guests, through: :invitations, source: :user
  has_many  :items
  belongs_to :diet


def host
  user_id = self.invitations.where(host: true)[0].user_id
  User.find(user_id)
end

end



