class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :tweet
      t.integer :channel_id

      t.timestamps
    end
  end
end
