class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :match_id
      t.float :odds
      t.boolean :public
      t.datetime :start_bet_time
      t.datetime :end_bet_time
      t.timestamps
    end
  end
  
  def self.down
    drop_table :games
  end
end
