class RenameTablePrimaryTeams < ActiveRecord::Migration
  def change
    rename_table :primary_team_tables, :primary_teams
  end
end
