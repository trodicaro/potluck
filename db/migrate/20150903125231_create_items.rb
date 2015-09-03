class CreateItems < ActiveRecord::Migration
  def change
    create_table  :items do |t|
      t.string  :name
      t.integer :quantity
      t.integer :invitation_id
      t.integer :diet_friendly_id
      t.string  :category
    end
  end
end
