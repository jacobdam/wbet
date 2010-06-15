class Match < ActiveRecord::Base
  belongs_to :team1, :class_name => 'Team'
  belongs_to :team2, :class_name => 'Team'

  validates_presence_of :team1, :team2

  def validate
    if team1_id.present? && team2_id.present? && team1_id == team2_id
      errors.add(:team2_id, 'can not be the same team 1')
    end
  end

  def before_save
    if self.name.blank?
      self.name = "#{team1.name} vs #{team2.name}"
    end
  end

  def self.options_for_select
    Match.all.map { |match| [match.name, match.id] }
  end
end
