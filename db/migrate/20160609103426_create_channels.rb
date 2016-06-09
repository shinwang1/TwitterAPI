class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :twitter_handle
      t.integer :board_id

      t.timestamps
    end
  end
end
