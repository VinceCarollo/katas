class LeagueTable
  def initialize
    @table = []
  end

  def push(summary)
    log_game(summary)
  end

  def get_goals_for(team_name)
    team_stats = find_team(team_name)
    return 0 unless team_stats
    team_stats[:goals_for]
  end

  def get_goals_against(team_name)
    team_stats = find_team(team_name)
    return 0 unless team_stats
    team_stats[:goals_against]
  end

  def get_points(team_name)
    team_stats = find_team(team_name)
    return 0 unless team_stats
    team_stats[:points]
  end

  def get_goal_difference(team_name)
    team_stats = find_team(team_name)
    return 0 unless team_stats
    team_stats[:goals_for] - team_stats[:goals_against]
  end

  def get_wins(team_name)
    team_stats = find_team(team_name)
    return 0 unless team_stats
    team_stats[:wins]
  end

  def get_losses(team_name)
    team_stats = find_team(team_name)
    return 0 unless team_stats
    team_stats[:losses]
  end

  def get_draws(team_name)
    team_stats = find_team(team_name)
    return 0 unless team_stats
    team_stats[:draws]
  end

  private

  def find_team(name)
    @table.find{|team| team[:name] == name }
  end

  def log_game(summary)
    home_team_summary = summary.split(' - ').first
    home_team = home_team_summary[0..-3]
    home_team_score = home_team_summary[-1]
    away_team_summary = summary.split(' - ').last
    away_team = away_team_summary[2..-1]
    away_team_score = away_team_summary[0]
    check_and_create_teams(home_team, away_team)
    record_game(home_team, away_team, home_team_score, away_team_score)
  end

  def check_and_create_teams(home_team, away_team)
    unless @table.any?{ |team| team[:name] == home_team }
      @table << { name: home_team, goals_for: 0, goals_against: 0, points: 0, wins: 0, losses: 0, draws: 0 }
    end
    unless @table.any?{ |team| team[:name] == away_team }
      @table << { name: away_team, goals_for: 0, goals_against: 0, points: 0, wins: 0, losses: 0, draws: 0 }
    end
  end

  def record_game(home_team, away_team, home_team_score, away_team_score)
    home_team_stats = @table.find{|team| team[:name] == home_team }
    away_team_stats = @table.find{|team| team[:name] == away_team }
    home_team_stats[:goals_for] += home_team_score.to_i
    home_team_stats[:goals_against] += away_team_score.to_i
    away_team_stats[:goals_for] += away_team_score.to_i
    away_team_stats[:goals_against] += home_team_score.to_i
    add_points(home_team_stats, away_team_stats, home_team_score, away_team_score)
  end

  def add_points(home_team_stats, away_team_stats, home_team_score, away_team_score)
    if home_team_score == away_team_score
      home_team_stats[:points] += 1
      home_team_stats[:draws] += 1
      away_team_stats[:points] += 1
      away_team_stats[:draws] += 1
    elsif home_team_score > away_team_score
      home_team_stats[:points] += 3
      home_team_stats[:wins] += 1
      away_team_stats[:losses] += 1
    else
      away_team_stats[:points] += 3
      away_team_stats[:wins] += 1
      home_team_stats[:losses] += 1
    end
  end
end
