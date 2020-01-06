class CreateTimers < ActiveRecord::Migration[6.0]
  def change
    create_table :timers do |t|
      t.integer :remaining_time
      t.belongs_to :user, null: false, foreign_key: true
      t.boolean :active
      t.string :name
      t.integer :starting_time

      t.timestamps
    end
  end
end
