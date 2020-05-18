class Team
  attr_reader :team_name
  attr_accessor :team_members, :team_coach, :points


  def initialize(team_name, team_members, team_coach, points)
    @team_name = team_name
    @team_members = team_members
    @team_coach = team_coach
    @points = 0
  end

  # def team_name()
  #   return @team_name
  # end
  
  # def team_members()
  #   return @players
  # end

  # def team_coach()
  #   return @coach
  # end

  # def new_coach(new_coach_name)
  #   @coach = new_coach_name
  # end
  
  def add_team_member(new_member)
    @team_members.push(new_member)
  end

  def check_for_team_member(member)
    for team_member in @team_members
      return true if team_member == member
    end
  end

  def add_or_remove_points(result)
    @points += 2 if result == "win" 
    @points -= 2 if result == "lost"
  end
    

end