class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :team_id
      t.string :member_name
      t.integer :uniform_number

      t.timestamps
    end
  end
end
