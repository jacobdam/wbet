class Game < ActiveRecord::Base
  attr_accessible :match_id, :odds, :public, :start_bet_time, :end_bet_time

  belongs_to :match

  named_scope :public, :conditions => ["public = ?", true]
end
