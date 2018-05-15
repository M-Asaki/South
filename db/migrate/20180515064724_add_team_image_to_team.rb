class AddTeamImageToTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :team_image, :string
  end
end
