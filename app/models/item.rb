class Item < ActiveRecord::Base
  belongs_to :invitation
  has_one  :event, through: :invitation
  has_one  :guest, through: :invitation, source: :user
  has_one     :diet

  validates :name, presence: true
end
