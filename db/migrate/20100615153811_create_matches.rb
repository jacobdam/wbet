class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.string :name
      t.integer :team1_id
      t.integer :team2_id
      t.text :description
      t.datetime :start_at

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
