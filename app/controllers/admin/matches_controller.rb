class Admin::MatchesController < Admin::AdminController
    active_scaffold :match do |config|
      config.columns = [:name, :team1, :team2, :description]
      columns[:team1].form_ui = :select
      columns[:team2].form_ui = :select
    end
end
