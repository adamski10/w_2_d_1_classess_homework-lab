require('minitest/autorun')
require('minitest/reporters')
require_relative('../team')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < Minitest::Test

  def test_check_team_name
    team_1 = Team.new("Celtic", ["G.Taylor", "C. Jullien", "M. Bauer"], "N. Lenon", 0)
    assert_equal("Celtic", team_1.team_name())
  end

  def test_check_team_members
    team_1 = Team.new("Celtic", ["G.Taylor", "C. Jullien", "M. Bauer"], "N. Lenon", 0)
    assert_equal(["G.Taylor", "C. Jullien", "M. Bauer"], team_1.team_members())
  end

  def test_check_team_coach
    team_1 = Team.new("Celtic", ["G.Taylor", "C. Jullien", "M. Bauer"], "N. Lenon", 0)
    assert_equal("N. Lenon", team_1.team_coach())
  end

  def test_can_update_coach_name
    team_1 = Team.new("Celtic", ["G.Taylor", "C. Jullien", "M. Bauer"], "N. Lenon", 0)
    team_1.team_coach = "Zenon"
    assert_equal("Zenon", team_1.team_coach())
  end

  def test_can_add_member_to_team
    team_1 = Team.new("Celtic", ["G.Taylor", "C. Jullien", "M. Bauer"], "N.Lenon", 0)
    team_1.add_team_member("Frank")
    assert_equal(["G.Taylor", "C. Jullien", "M. Bauer", "Frank"], team_1.team_members())
  end

  def test_check_for_team_member
    team_1 = Team.new("Celtic", ["G.Taylor", "C. Jullien", "M. Bauer"], "N. Lenon", 0)
    assert_equal(true, team_1.check_for_team_member("G.Taylor"))
  end

  def test_add_points_for__win
    team_1 = Team.new("Celtic", ["G.Taylor", "C. Jullien", "M. Bauer"], "N. Lenon", 0)
    team_1.add_or_remove_points("win")
    assert_equal(2, team_1.points())
  end

  def test_add_points_for__lost
    team_1 = Team.new("Celtic", ["G.Taylor", "C. Jullien", "M. Bauer"], "N. Lenon", 0)
    team_1.add_or_remove_points("lost")
    assert_equal(-2, team_1.points())
  end
  

end