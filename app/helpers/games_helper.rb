module GamesHelper
  def odds_line(game)
    if game.odds > 0 
      "#{game.match.team1.name} chap #{game.match.team2.name} #{game.odds} trai"
    elsif game.odds < 0
      "#{game.match.team2.name} chap #{game.match.team1.name} #{game.odds} trai"
    else
      "Khong chap"
    end 
  end
end

