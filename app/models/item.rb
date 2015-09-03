class Item < ActiveRecord::Base
  has_many :invitations
  # has_one  :event, through: :invitations
  belongs_to  :guest, class_name: "User"
  has_one     :diet

end
