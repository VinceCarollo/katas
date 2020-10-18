require './lib/league_table.rb'

RSpec.describe LeagueTable do
  let(:lt) { LeagueTable.new }

  it "tracks league stats" do
    lt.push("Man Utd 3 - 0 Liverpool")

    expect(lt.get_goals_for("Man Utd")).to eq(3)
    expect(lt.get_points("Man Utd")).to eq(3)
    expect(lt.get_points("Liverpool")).to eq(0)
    expect(lt.get_goal_difference("Liverpool")).to eq(-3)

    lt.push("Liverpool 1 - 1 Man Utd")

    expect(lt.get_goals_for("Man Utd")).to eq(4)
    expect(lt.get_points("Man Utd")).to eq(4)
    expect(lt.get_points("Liverpool")).to eq(1)
    expect(lt.get_goals_against("Man Utd")).to eq(1)
    expect(lt.get_points("Tottenham")).to eq(0)

    expect(lt.get_wins('Man Utd')).to eq(1)
    expect(lt.get_losses('Liverpool')).to eq(1)
    expect(lt.get_draws('Liverpool')).to eq(1)
  end
end
