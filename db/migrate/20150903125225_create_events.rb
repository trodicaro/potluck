class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string    :name, null: false
      t.datetime  :date
      t.string    :location
      t.string    :description
      t.integer   :diet_id

      t.timestamps
    end
  end
end
