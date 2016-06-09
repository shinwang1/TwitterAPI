class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.integer :user_id
      t.string :search_keyword

      t.timestamps
    end
  end
end
