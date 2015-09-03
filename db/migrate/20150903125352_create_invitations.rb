class CreateInvitations < ActiveRecord::Migration
  def change
    create_table  :invitations do |t|
      t.integer  :user_id
      t.integer  :event_id
      t.boolean  :host, default: false
    end
  end
end
