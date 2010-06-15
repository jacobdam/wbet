# To change this template, choose Tools | Templates
# and open the template in the editor.

class Team < ActiveRecord::Base
  def self.options_for_select
    Team.all.map { |team| [team.name, team.id] }
  end
end
